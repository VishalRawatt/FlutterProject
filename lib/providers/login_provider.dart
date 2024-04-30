import 'package:flutter/cupertino.dart';

class LoginProvider extends ChangeNotifier{

  TextEditingController _username = TextEditingController() ;
  TextEditingController get username => _username;

  TextEditingController _password = TextEditingController() ;
  TextEditingController get password => _password;
}