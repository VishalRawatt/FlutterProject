import 'dart:convert';

LoginRequest loginRequestFromJson(String str) => LoginRequest.fromJson(json.decode(str));
String loginRequestToJson(LoginRequest data) => json.encode(data.toJson());
class LoginRequest {
  LoginRequest({
      String? username, 
      String? password,
      int? expiresInMins
  }){
    _username = username;
    _password = password;
    _expiresInMins = expiresInMins;
}

  LoginRequest.fromJson(dynamic json) {
    _username = json['username'];
    _password = json['password'];
    _expiresInMins = json['expiresInMins'];
  }
  String? _username;
  String? _password;
  int? _expiresInMins;
LoginRequest copyWith({  String? username,
  String? password,
  int? expiresInMins,
}) => LoginRequest(  username: username ?? _username,
  password: password ?? _password,
  expiresInMins: expiresInMins ?? _expiresInMins,
);
  String? get username => _username;
  String? get password => _password;
  int? get expiresInMins => _expiresInMins;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = _username;
    map['password'] = _password;
    map['expiresInMins'] = _expiresInMins;
    return map;
  }

}