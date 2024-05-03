class User {
  String? name;
  String? email;
  String? phone;
  String? address;
  String? password;
  String? city;

  User(
      {this.name,
      this.email,
      this.phone,
      this.address,
      this.password,
      this.city});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    address = json['address'];
    password = json['password'];
    city = json['city'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['address'] = address;
    data['password'] = password;
    data['city'] = city;
    return data;
  }
}
