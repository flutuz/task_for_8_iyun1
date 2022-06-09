class UserSignIN {
  String? email;
  String? password;

  UserSignIN({this.email, this.password});

  UserSignIN.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        password = json['password'];

  Map<String, dynamic> toJson() {
    return {"email": email, "password": password};
  }
}
