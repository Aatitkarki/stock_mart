class SharePriceRequestModel {
  String companyCode;
  String date;

  SharePriceRequestModel({this.companyCode, this.date});

  SharePriceRequestModel.fromJson(Map<String, dynamic> json) {
    companyCode = json['companyCode'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['companyCode'] = this.companyCode;
    data['date'] = this.date;
    return data;
  }
}
