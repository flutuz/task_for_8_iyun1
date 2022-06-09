class UserSignUP {
  String? email;
  String? password;
  String? number;

  UserSignUP({this.email, this.password, this.number});

  UserSignUP.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        password = json['password'],
        number = json['number'];

  Map<String, dynamic> toJson() =>
      {'email': email, 'password': password, 'number': number};
}
