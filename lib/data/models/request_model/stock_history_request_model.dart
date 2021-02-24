class StockHistoryRequestModel {
  String companyCode;
  String dataType;
  String endDate;
  int noOfNews;
  String startDate;

  StockHistoryRequestModel(
      {this.companyCode,
      this.dataType,
      this.endDate,
      this.noOfNews,
      this.startDate});

  StockHistoryRequestModel.fromJson(Map<String, dynamic> json) {
    companyCode = json['CompanyCode'];
    dataType = json['DataType'];
    endDate = json['EndDate'];
    noOfNews = json['NoOfNews'];
    startDate = json['StartDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CompanyCode'] = this.companyCode;
    data['DataType'] = this.dataType;
    data['EndDate'] = this.endDate;
    data['NoOfNews'] = this.noOfNews;
    data['StartDate'] = this.startDate;
    return data;
  }
}
