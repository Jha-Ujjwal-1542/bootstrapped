class StartupCreation {
  String? name;
  String? logo;
  String? about;
  String? regDate;
  String? regNo;
  int? reqInvestment;
  int? valuation;
  int? offeredShare;
  String? pan;
  String? district;
  String? pitchDeck;
  String? elevatorPitch;
  String? industry;

  StartupCreation(
      {this.name,
      this.logo,
      this.about,
      this.regDate,
      this.regNo,
      this.reqInvestment,
      this.valuation,
      this.offeredShare,
      this.pan,
      this.district,
      this.pitchDeck,
      this.elevatorPitch,
      this.industry});

  StartupCreation.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    logo = json['logo'];
    about = json['about'];
    regDate = json['reg_date'];
    regNo = json['reg_no'];
    reqInvestment = json['req_investment'];
    valuation = json['valuation'];
    offeredShare = json['offered_share'];
    pan = json['pan'];
    district = json['district'];
    pitchDeck = json['pitch_deck'];
    elevatorPitch = json['elevator_pitch'];
    industry = json['industry'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['logo'] = logo;
    data['about'] = about;
    data['reg_date'] = regDate;
    data['reg_no'] = regNo;
    data['req_investment'] = reqInvestment;
    data['valuation'] = valuation;
    data['offered_share'] = offeredShare;
    data['pan'] = pan;
    data['district'] = district;
    data['pitch_deck'] = pitchDeck;
    data['elevator_pitch'] = elevatorPitch;
    data['industry'] = industry;
    return data;
  }
}
