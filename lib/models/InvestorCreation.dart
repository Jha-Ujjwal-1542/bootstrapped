// ignore: file_names
class InvestorCreation {
  int? id;
  int? userId;
  String? name;
  String? logo;
  String? about;
  int? maxInvestment;
  int? minInvestment;
  String? portfolio;
  String? interest;
  String? location;
  String? type;

  InvestorCreation(
      {this.id,
      this.userId,
      this.name,
      this.logo,
      this.about,
      this.maxInvestment,
      this.minInvestment,
      this.portfolio,
      this.interest,
      this.location,
      this.type});

  InvestorCreation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    name = json['name'];
    logo = json['logo'];
    about = json['about'];
    maxInvestment = json['max_investment'];
    minInvestment = json['min_investment'];
    portfolio = json['portfolio'];
    interest = json['interest'];
    location = json['location'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['name'] = name;
    data['logo'] = logo;
    data['about'] = about;
    data['max_investment'] = maxInvestment;
    data['min_investment'] = minInvestment;
    data['portfolio'] = portfolio;
    data['interest'] = interest;
    data['location'] = location;
    data['type'] = type;
    return data;
  }
}
