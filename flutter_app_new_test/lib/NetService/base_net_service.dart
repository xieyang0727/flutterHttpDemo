import 'package:flutter_package_http_rm/flutter_package_http_rm.dart';
import 'package:flutter_app_new_test/Interceptor/custom_log_interceptor.dart';

class BaseNetService {
  HttpUtilRM httpUtilRM;

  BaseNetService() {
    //可以自定义options参数
//  BaseOptions options = BaseOptions(
//    //请求基地址,可以包含子路径
//      baseUrl: "http://172.17.8.168:8080/CRDemo/",
//      //连接服务器超时时间，单位是毫秒.
//      connectTimeout: 10000,
//      //响应流上前后两次接受到数据的间隔，单位为毫秒。
//      receiveTimeout: 5000,
//      //Http请求头.
//      headers: {"version": "1.0.1"});

//一下参数均可以添加也可以不添加

    httpUtilRM = HttpUtilRM(
//      onRequestBefore: () {
//    print('开始网络请求了');
//  },
//      onRequestErrorBefore: () {
//    print('将要出错误了');
//  },
//      onResponseBefore: () {
//    print('网络响应之前');
//  },
//      parameterErrorCallbackRM: (DioError e) {
//    print('网络出错误了回调 $e');
//  },
//      添加整体外部网络对app自己的Code判断 不添加返回整体数据 根据业务需求自行写逻辑
//      onClientCodeJudgeCallBack: (Response object) {
//    String code = object.data['code'];
//    String msg = object.data['msg'];
//    if (code != "00000") {
//      return RMError(rmErrorType: RMErrorType.CLIENT, msg: msg);
//    }
//    return null;
//  }
//  ,customOptions: options // 可以自定义添加options参数
//  ,headsMap: {"":""}
//  ,isShowLog: true
//  ,isOpenCook: true

        );

//  可以链式调用里边的参数
//  httpUtilRM..setHeadsMap ={"ver":"444"} ..setIsShowLog=true;

//  可以添加自定义的拦截器
//    httpUtilRM.setAddInterceptors = (RmLogInterceptor(
//        responseBody: true,
//        request: true,
//        requestHeader: true,
//        responseHeader: true)); //开启请求日志

  }
}
