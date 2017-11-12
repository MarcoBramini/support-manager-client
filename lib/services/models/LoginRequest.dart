class LoginRequest {
  String UserId;
  String Password;

  Map<String, String> toJson(){
    var data = new Map<String, String>();
    data["userId"]=UserId;
    data["password"]=Password;
    return data;
  }
}