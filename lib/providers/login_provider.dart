import 'dart:convert';
import 'package:first/model/request/login_request.dart';
import 'package:first/model/response/login_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http ;

class LoginProvider extends ChangeNotifier{
  TextEditingController _username = TextEditingController() ;

  TextEditingController get username => _username;

  TextEditingController _password = TextEditingController() ;

  TextEditingController get password => _password;

  LoginResponse _loginResponse = LoginResponse();

  LoginResponse get loginResponse => _loginResponse;

  Future<void> doLogin() async {
    final user_name = _username.text.toString() ;
    final user_password = _password.text.toString() ;

    final loginRequest = LoginRequest(
      username: user_name , password: user_password , expiresInMins: 60);

    final response = await http.post(
        Uri.parse("https://dummyjson.com/auth/login"),
        body: loginRequest.toJson() ) ;

    if(response.statusCode == 200){
      _loginResponse = LoginResponse.fromJson(jsonDecode(response.body));
      notifyListeners();
    }
  }
}