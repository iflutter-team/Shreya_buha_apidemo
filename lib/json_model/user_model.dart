import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(
      json.decode(str).map(
            (x) => User.fromJson(x),
          ),
    );

String userToJson(List<User> data) => json.encode(
      List<dynamic>.from(
        data.map(
          (x) => x.toJson(),
        ),
      ),
    );

class User {
 // String? id;
  String? name1;
  String? password1;
  String? email;
  String? number;

  User({
  //  this.id,
    this.name1,
    this.password1,
    this.email,
    this.number,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
     // id: json["id"],
      name1: json["name"],
      password1: json["password"],
      email: json["email"],
      number: json["number"],
    );
  }

  Map<String, dynamic> toJson() => {
      //  "id": id,
        "name": name1,
        "password": password1,
        "email": email,
        "number": number,
      };
}
