# flutter_app_new_test

## 使用方法
配置pubspec.yaml文件 
```bash
  flutter_package_http_rm:
    git:
      url: 'https://github.com/xieyang0727/flutter_package_http_rm.git'
```
选择Pagkages get

###  文件内部调用 
```bash
配置参数可按需配置
HTTP_RM_CONFIGURATION.baseHttpURL="http://*****"; (必填)

HTTP_RM_CONFIGURATION.isHttpOpenLog=true; (不填写默认false)

HTTP_RM_CONFIGURATION.isHttpOpenCook=true(不填写默认false);

HTTP_RM_CONFIGURATION.headsMap ={
      "version": "1.0.0"
    };
```
方法调用
```bash
void setUpHttp () async{

//下列回调可选填也可不填

HttpUtilRM httpUtilRM =HttpUtilRM(onRequestBefore:(){

  print('开始网络请求了');

},onRequestErrorBefore: (){

  print('将要出错误了');

},onResponseBefore: (){

  print('网络响应之前');

},parameterErrorCallbackRM: (DioError e){

  print('网络出错误了回调 $e');

});

  ResponseData responsePost = await httpUtilRM.post(Api.TEST_LIST2);

  Response response =responsePost.response;

  print('responsePost $response');

}
```
