class LoginResponse {
  String UserId;
  String Error;

  LoginResponse fromJson(Map<String, String> json){
    return new LoginResponse()
      ..UserId = json["userId"]
      ..Error = json["error"];
  }
}