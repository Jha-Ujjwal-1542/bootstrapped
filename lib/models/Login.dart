// ignore: file_names
class Login {
  int? id;
  String? name;
  String? mobile;
  String? address;
  String? password;
  String? updatedAt;
  String? email;
  int? countryCode;
  String? type;
  String? createdAt;
  String? deletedAt;

  Login(
      {this.id,
      this.name,
      this.mobile,
      this.address,
      this.password,
      this.updatedAt,
      this.email,
      this.countryCode,
      this.type,
      this.createdAt,
      this.deletedAt});

  Login.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    mobile = json['mobile'];
    address = json['address'];
    password = json['password'];
    updatedAt = json['updated_at'];
    email = json['email'];
    countryCode = json['country_code'];
    type = json['type'];
    createdAt = json['created_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['mobile'] = mobile;
    data['address'] = address;
    data['password'] = password;
    data['updated_at'] = updatedAt;
    data['email'] = email;
    data['country_code'] = countryCode;
    data['type'] = type;
    data['created_at'] = createdAt;
    data['deleted_at'] = deletedAt;
    return data;
  }
}
