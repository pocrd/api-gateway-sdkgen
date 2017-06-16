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


java -jar apigen.jar api-jssdk-gen -url http://api-stage.yit.com/apigw/info.api?raw -o ../sdk-language/javascript/api net.pocrd.m
java -jar apigen.jar api-javasdk-gen -url http://api-stage.yit.com/apigw/info.api?raw -o ../sdk-language/java/apisdk/src/main/java/net/pocrd/m/app/client net.pocrd.m.app.client
java -jar apigen.jar api-oc-gen -url http://api-stage.yit.com/apigw/info.api?raw -o ../sdk-language/objective-c/apisdk/apisdk/PoCAPICore PoC
java -jar apigen.jar api-doc-gen -url http://api-stage.yit.com/apigw/info.api?raw -o ../sdk-language/htmldoc