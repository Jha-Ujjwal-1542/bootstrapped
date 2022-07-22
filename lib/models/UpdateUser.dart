class UpdateUser {
  String? name;
  int? countryCode;
  String? mobile;
  String? email;
  String? address;
  String? type;

  UpdateUser(
      {this.name,
      this.countryCode,
      this.mobile,
      this.email,
      this.address,
      this.type});

  UpdateUser.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    countryCode = json['country_code'];
    mobile = json['mobile'];
    email = json['email'];
    address = json['address'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['country_code'] = countryCode;
    data['mobile'] = mobile;
    data['email'] = email;
    data['address'] = address;
    data['type'] = type;
    return data;
  }
}
