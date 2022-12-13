import 'package:auth_flutter_clean/domain/core/const.dart';
import 'package:auth_flutter_clean/domain/core/register_model.dart';
import 'package:get/get.dart';

class RegisterProvider extends GetConnect {
  Future<Register> register(String fullname, String mobileNumber, String email,
      String typeUser, String password, String confrimPass) async {
    var respons = await post('${baseApi}register', {
      "name": fullname,
      "mobile": mobileNumber,
      "email": email,
      "type_user": typeUser,
      "password": password,
      "confirm_password": confrimPass
    });
    if (respons.isOk) {
      return Register.fromJson(respons.body);
    } else {
      return Future.error(respons.statusText ?? "Failed");
    }
  }
}
