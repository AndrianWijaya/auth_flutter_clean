import 'package:auth_flutter_clean/domain/core/const.dart';
import 'package:get/get.dart';

import '../login_model.dart';

class LoginProvider extends GetConnect {
  Future<Login> login(String username, String password) async {
    var respons = await post('${baseApi}login',{
        "username" : username,
        "password" : password
    });
    if (respons.isOk) {
      return Login.fromJson(respons.body);
    } else {
      return Future.error(respons.statusText ?? "Failed");
    }
  }
  
}
