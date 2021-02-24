class FirstInfoRequestModel {
  String date;
  String deviceType;
  String gcmRegId;
  String uniqueKey;

  FirstInfoRequestModel(
      {this.date, this.deviceType, this.gcmRegId, this.uniqueKey});

  FirstInfoRequestModel.fromJson(Map<String, dynamic> json) {
    date = json['Date'];
    deviceType = json['deviceType'];
    gcmRegId = json['gcmRegId'];
    uniqueKey = json['uniqueKey'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Date'] = this.date;
    data['deviceType'] = this.deviceType;
    data['gcmRegId'] = this.gcmRegId;
    data['uniqueKey'] = this.uniqueKey;
    return data;
  }
}
