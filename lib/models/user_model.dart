class User {
  String? name;
  String? email;
  String? phone;
  String? address;
  String? password;

  User({this.name, this.email, this.phone, this.address, this.password});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    address = json['address'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['address'] = address;
    data['password'] = password;
    return data;
  }
}
