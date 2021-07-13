import 'package:get/get.dart';

const host = "http://192.168.2.13:8080";

//통신
class UserProvider extends GetConnect {
  Future<Response> login(Map data) => post("$host/login", data);
}
