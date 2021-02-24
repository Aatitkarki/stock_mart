class IndicesRequestModel {
  String dataType;
  String endDate;
  String indexName;
  int indexType;
  String startDate;

  IndicesRequestModel(
      {this.dataType,
      this.endDate,
      this.indexName,
      this.indexType,
      this.startDate});

  IndicesRequestModel.fromJson(Map<String, dynamic> json) {
    dataType = json['dataType'];
    endDate = json['endDate'];
    indexName = json['indexName'];
    indexType = json['indexType'];
    startDate = json['startDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dataType'] = this.dataType;
    data['endDate'] = this.endDate;
    data['indexName'] = this.indexName;
    data['indexType'] = this.indexType;
    data['startDate'] = this.startDate;
    return data;
  }
}
