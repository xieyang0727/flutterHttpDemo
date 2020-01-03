import 'package:flutter_app_new_test/NetService/base_net_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_package_http_rm/flutter_package_http_rm.dart';
import 'package:flutter_app_new_test/Api.dart';

//这个文件可以根据不同业务添加多个文件单独处理
class MainNetService extends BaseNetService {
  setUpHttpList2() async {
    ResponseDataRM responsePost =
        await httpUtilRM.post(Api.TEST_LIST2, data: {"rows": "10"});
    return responsePost;
  }
}
