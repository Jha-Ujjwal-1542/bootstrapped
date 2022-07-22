// ignore: file_names
class CreateUser {
  int? id;
  String? name;
  int? countryCode;
  String? mobile;
  String? email;
  String? address;
  String? type;

  CreateUser(
      {this.id,
      this.name,
      this.countryCode,
      this.mobile,
      this.email,
      this.address,
      this.type});

  CreateUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    countryCode = json['country_code'];
    mobile = json['mobile'];
    email = json['email'];
    address = json['address'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['country_code'] = countryCode;
    data['mobile'] = mobile;
    data['email'] = email;
    data['address'] = address;
    data['type'] = type;
    return data;
  }
}
