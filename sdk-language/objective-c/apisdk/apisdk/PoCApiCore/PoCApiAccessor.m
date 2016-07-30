#import "PoCApiAccessor.h"
#import "PoCBaseRequest.h"
#import "PoCFileRequest.h"
#import "PoCApiConfig.h"

@implementation PoCApiAccessor

- (id) initWithApiContext:(PoCApiContext *) context
              connTimeout:(NSInteger) connTimeout
                soTimeout:(NSInteger) soTimeout
                    agent:(NSString *) agent
                keepalive:(NSInteger) keepalive
                   apiUrl:(NSString *) apiUrl
{
    if (self = [super init])
    {
        _apiContext = context;
        _connTimeout = connTimeout;
        _soTimeout = soTimeout;
        _agent = agent;
        _keepalive = keepalive;
        _apiUrl = apiUrl;
    }
    return self;
}

- (PoCServerResponse *) fillApiWithResponse:(PoCBaseRequest *) request
{
    return [self fillApiWithResponses:[NSArray arrayWithObject:request]];
}

- (PoCServerResponse *) fillApiWithResponses:(NSArray *) requests
{
    PoCServerResponse *response = nil;
    if (!requests || requests.count ==0)
        return response;
    NSString *url = [_apiUrl stringByAppendingString:@"/m.api"];
    NSString *params = [_apiContext parameterStringWithRequests:requests];
    
    @try
    {
        NSError *error = nil;
        NSData *respData = nil;
        respData = [self requestWithUrl:url params:params error:&error];
        
        if (kIsDebug)
        {
            NSString *responseString = [[NSString alloc] initWithData:respData encoding:NSUTF8StringEncoding];
            NSLog(@"params:%@ /n response:%@", params, responseString);
        }
        if (error)
        {
            for (PoCBaseRequest *request in requests) {
                [request fillError:error];
            }
            // TODO: log error
            return response;
        }
        response = [_apiContext fillResponseWithRequests:requests data:respData];
    }
    @catch (NSException *exception)
    {
        // TODO: log error
    }
    return response;
}

- (NSData *)requestWithUrl:(NSString *)url params:(NSString *)params error:(NSError **)error {
    return [self requestWithUrl:url params:params method:nil error:error];
}

- (NSData *)requestWithUrl:(NSString *)url params:(NSString *)params method:(NSString *)method error:(NSError **)error {
    NSMutableURLRequest *req = [[NSMutableURLRequest alloc] init];
    req.HTTPShouldHandleCookies = NO;
    
    [req setTimeoutInterval:_connTimeout];
    if (_keepalive > 0)
        [req addValue:[NSString stringWithFormat:@"%ld",(long)_keepalive] forHTTPHeaderField:@"Keep-Alive"];
    [req addValue:_agent forHTTPHeaderField:@"User-Agent"];
    
    NSURL *appurl = [NSURL URLWithString:_apiUrl];
    
    NSMutableArray *arrCookies = [NSMutableArray array];
    
    // scr 加入cookies
    if (self.src.length > 0 && self.src_t.integerValue > 0 && appurl) {
        NSDictionary *dictCookieSrc = [NSDictionary dictionaryWithObjectsAndKeys:@"_src", NSHTTPCookieName,
                                       self.src, NSHTTPCookieValue,
                                       @"/", NSHTTPCookiePath,
                                       appurl.host, NSHTTPCookieDomain,
                                       nil];
        NSHTTPCookie *cookieSrc = [NSHTTPCookie cookieWithProperties:dictCookieSrc];
        
        NSDictionary *dictCookieSrcT = [NSDictionary dictionaryWithObjectsAndKeys:@"_src_t", NSHTTPCookieName,
                                       [NSString stringWithFormat:@"%@", self.src_t], NSHTTPCookieValue,
                                       @"/", NSHTTPCookiePath,
                                       appurl.host, NSHTTPCookieDomain,
                                       nil];
        NSHTTPCookie *cookieSrcT = [NSHTTPCookie cookieWithProperties:dictCookieSrcT];
        
        [arrCookies addObject:cookieSrc];
        [arrCookies addObject:cookieSrcT];
    }

    // spm 加入cookies
    if (self.spms.length > 0) {
        NSDictionary *dictCookieSpm = [NSDictionary dictionaryWithObjectsAndKeys:@"_spm", NSHTTPCookieName,
                                        self.spms, NSHTTPCookieValue,
                                        @"/", NSHTTPCookiePath,
                                        appurl.host, NSHTTPCookieDomain,
                                        nil];
        NSHTTPCookie *cookieSpm = [NSHTTPCookie cookieWithProperties:dictCookieSpm];
        [arrCookies addObject:cookieSpm];
    }
    
    if (arrCookies.count > 0) {
        NSDictionary *dictCookies = [NSHTTPCookie requestHeaderFieldsWithCookies:arrCookies];
        [req setValue:[dictCookies objectForKey:@"Cookie"] forHTTPHeaderField:@"Cookie"];
    }
    
    // reffer
    if (self.referer.length > 0) {
        [req setValue:self.referer forHTTPHeaderField:@"Referer"];
    }
    
    NSURLResponse *response = nil;
    NSData *respData = nil;
    
    if ((method && [method isEqualToString:@"POST"]) || ((!method || [@"" isEqualToString:method]) && params.length > 200))
    {
        [req setURL:[NSURL URLWithString:url]];
        [req setHTTPMethod:@"POST"];
        if (_keepalive == 0)
            [req addValue:@"close" forHTTPHeaderField:@"Connection"];
        if (kUseHttpGzip)
            [req addValue:@"gzip" forHTTPHeaderField:@"Accept-Encoding"];
        [req addValue:@"application/x-www-form-urlencoded;charset=UTF-8" forHTTPHeaderField:@"Content-Type"];
        [req setHTTPBody:[params dataUsingEncoding:NSUTF8StringEncoding]];
    }
    else
    {
        [req setURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@?%@",url,params]]];
        [req setHTTPMethod:@"GET"];
        if (_keepalive == 0)
            [req addValue:@"close" forHTTPHeaderField:@"Connection"];
        if (kUseHttpGzip)
            [req addValue:@"gzip" forHTTPHeaderField:@"Accept-Encoding"];
    }
    
    respData = [NSURLConnection sendSynchronousRequest:req returningResponse:&response error:error];
    
    return respData;
}

- (void)fillFileApiWithResponse:(PoCFileRequest *)request
{
    NSString *url = [_apiUrl stringByAppendingString:@"/file.api"];
    NSString *params = [_apiContext parameterStringWithRequests:nil];

    NSMutableURLRequest *req = [[NSMutableURLRequest alloc] init];
    req.HTTPShouldHandleCookies = NO;
    
    [req setURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@?%@",url,params]]];
    [req setTimeoutInterval:_connTimeout];
    [req setHTTPMethod:@"POST"];
    [req addValue:kWebAgent forHTTPHeaderField:@"User-Agent"];
    
    @try
    {
        NSURLResponse *response = nil;
        NSError *error = nil;
        NSData *respData = nil;
        
        NSString *boundary = @"----WebKitFormBoundaryA7ifUEQAA6pLEXLT";
        NSString *contentType = [NSString stringWithFormat:@"multipart/form-data;boundary=%@",boundary];
        [req addValue:contentType forHTTPHeaderField: @"Content-Type"];
        
        NSMutableData *body = [NSMutableData data];
        
        [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding]];
        
        NSString *file = [NSString stringWithFormat:@"name=\"%@\";filename=\"%@\"\r\n",request.fileName, request.fileName];
        NSString *type = [NSString stringWithFormat:@"Content-Type: %@\r\n\r\n", request.contentTypeText];
        [body appendData:[@"Content-Disposition:form-data; " dataUsingEncoding:NSUTF8StringEncoding]];
        [body appendData:[file dataUsingEncoding:NSUTF8StringEncoding]];
        [body appendData:[type dataUsingEncoding:NSUTF8StringEncoding]];
        [body appendData:[NSData dataWithData:request.data]];
        [body appendData:[[NSString stringWithFormat:@"\r\n--%@--\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding]];
        
        [req setHTTPBody:body];
        [req setValue:[NSString stringWithFormat:@"%lu", (unsigned long)body.length] forHTTPHeaderField:@"Content-Length"];
        respData = [NSURLConnection sendSynchronousRequest:req returningResponse:&response error:&error];
        
        if (kIsDebug)
        {
            NSString *responseString = [[NSString alloc] initWithData:respData encoding:NSUTF8StringEncoding];
            NSLog(@"%@", responseString);
        }
        if (error)
        {
            [request fillError:error];
            return;
        }
        [_apiContext fillResponseWithRequests:[NSArray arrayWithObject:request] data:respData];
    }
    @catch (NSException *exception)
    {
        // TODO: log error
    }
}

- (NSURL *)downUrlWithResponse:(PoCFileRequest *)request
{
    NSString *url = [_apiUrl stringByAppendingString:@"/file.api"];
    NSString *params = [_apiContext parameterStringWithRequests:@[request]];
    return [NSURL URLWithString:[NSString stringWithFormat:@"%@?%@",url,params]];
}

@end
