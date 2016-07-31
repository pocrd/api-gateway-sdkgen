#clear up
rm -rf ../sdk-language/htmldoc
mkdir ../sdk-language/htmldoc
rm -rf ../sdk-language/javascript/api
mkdir ../sdk-language/javascript
mkdir ../sdk-language/javascript/api
rm -rf ../sdk-language/java/apisdk/src/main/java/net/pocrd/m/app/client/api
mkdir ../sdk-language/java/apisdk/src/main/java/net/pocrd/m/app/client/api
rm -rf ../sdk-language/objective-c/apisdk/apisdk/PoCAPICore/Request
rm -rf ../sdk-language/objective-c/apisdk/apisdk/PoCAPICore/Response
mkdir ../sdk-language/objective-c/apisdk/apisdk/PoCAPICore/Request
mkdir ../sdk-language/objective-c/apisdk/apisdk/PoCAPICore/Response


java -classpath api-util-1.2.2-SNAPSHOT-allinone.jar net.pocrd.core.generator.ApiSdkJavaScriptGenerator url http://115.28.160.84/info.api net.pocrd.m ../sdk-language/javascript/api -s None,OAuthVerified,RegisteredDevice,User,UserTrustedDevice,MobileOwner,MobileOwnerTrustedDevice,UserLogin,UserLoginAndMobileOwner
java -classpath api-util-1.2.2-SNAPSHOT-allinone.jar net.pocrd.core.generator.ApiSdkJavaGenerator url http://115.28.160.84/info.api net.pocrd.m.app.client ../sdk-language/java/apisdk/src/main/java/net/pocrd/m/app/client -s None,OAuthVerified,RegisteredDevice,User,UserTrustedDevice,MobileOwner,MobileOwnerTrustedDevice,UserLogin,UserLoginAndMobileOwner
java -classpath api-util-1.2.2-SNAPSHOT-allinone.jar net.pocrd.core.generator.ApiSdkObjectiveCGenerator url http://115.28.160.84/info.api PoC ../sdk-language/objective-c/apisdk/apisdk/PoCAPICore -s None,OAuthVerified,RegisteredDevice,User,UserTrustedDevice,MobileOwner,MobileOwnerTrustedDevice,UserLogin,UserLoginAndMobileOwner
java -classpath api-util-1.2.2-SNAPSHOT-allinone.jar net.pocrd.core.generator.HtmlApiDocGenerator url http://115.28.160.84/info.api ../sdk-language/htmldoc -s None,OAuthVerified,RegisteredDevice,User,UserTrustedDevice,MobileOwner,MobileOwnerTrustedDevice,UserLogin,UserLoginAndMobileOwner

