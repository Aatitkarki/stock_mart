class FloorSheetRequestModel {
  String buyerID;
  String companyCode;
  String contractNo;
  String date;
  int id;
  int limit;
  String sellerID;

  FloorSheetRequestModel(
      {this.buyerID,
      this.companyCode,
      this.contractNo,
      this.date,
      this.id,
      this.limit,
      this.sellerID});

  FloorSheetRequestModel.fromJson(Map<String, dynamic> json) {
    buyerID = json['buyerID'];
    companyCode = json['companyCode'];
    contractNo = json['contractNo'];
    date = json['date'];
    id = json['id'];
    limit = json['limit'];
    sellerID = json['sellerID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['buyerID'] = this.buyerID;
    data['companyCode'] = this.companyCode;
    data['contractNo'] = this.contractNo;
    data['date'] = this.date;
    data['id'] = this.id;
    data['limit'] = this.limit;
    data['sellerID'] = this.sellerID;
    return data;
  }
}
