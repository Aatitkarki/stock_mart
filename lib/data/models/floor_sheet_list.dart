class FloorSheetList {
  FloorSheet d;

  FloorSheetList({this.d});

  FloorSheetList.fromJson(Map<String, dynamic> json) {
    d = json['d'] != null ? new FloorSheet.fromJson(json['d']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.d != null) {
      data['d'] = this.d.toJson();
    }
    return data;
  }
}

class FloorSheet {
  NepseIndex nepseIndex;
  MarketStatus marketStatus;
  int totalShareQuantity;
  int totalAmount;
  int remainingCount;
  List<FloorSheets> floorSheets;

  FloorSheet(
      {this.nepseIndex,
      this.marketStatus,
      this.totalShareQuantity,
      this.totalAmount,
      this.remainingCount,
      this.floorSheets});

  FloorSheet.fromJson(Map<String, dynamic> json) {
    nepseIndex = json['NepseIndex'] != null
        ? new NepseIndex.fromJson(json['NepseIndex'])
        : null;
    marketStatus = json['MarketStatus'] != null
        ? new MarketStatus.fromJson(json['MarketStatus'])
        : null;
    totalShareQuantity = json['TotalShareQuantity'];
    totalAmount = json['TotalAmount'];
    remainingCount = json['RemainingCount'];
    if (json['FloorSheets'] != null) {
      floorSheets = new List<FloorSheets>();
      json['FloorSheets'].forEach((v) {
        floorSheets.add(new FloorSheets.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.nepseIndex != null) {
      data['NepseIndex'] = this.nepseIndex.toJson();
    }
    if (this.marketStatus != null) {
      data['MarketStatus'] = this.marketStatus.toJson();
    }
    data['TotalShareQuantity'] = this.totalShareQuantity;
    data['TotalAmount'] = this.totalAmount;
    data['RemainingCount'] = this.remainingCount;
    if (this.floorSheets != null) {
      data['FloorSheets'] = this.floorSheets.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NepseIndex {
  String sType;
  String date;
  double indexValue;
  double percentageChange;
  double indexHigh;
  double indexLow;
  double absoluteChange;
  int statTurnOver;
  String indexName;
  int indexType;

  NepseIndex(
      {this.sType,
      this.date,
      this.indexValue,
      this.percentageChange,
      this.indexHigh,
      this.indexLow,
      this.absoluteChange,
      this.statTurnOver,
      this.indexName,
      this.indexType});

  NepseIndex.fromJson(Map<String, dynamic> json) {
    sType = json['__type'];
    date = json['Date'];
    indexValue = json['IndexValue'];
    percentageChange = json['PercentageChange'];
    indexHigh = json['IndexHigh'];
    indexLow = json['IndexLow'];
    absoluteChange = json['AbsoluteChange'];
    statTurnOver = json['StatTurnOver'];
    indexName = json['IndexName'];
    indexType = json['IndexType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['__type'] = this.sType;
    data['Date'] = this.date;
    data['IndexValue'] = this.indexValue;
    data['PercentageChange'] = this.percentageChange;
    data['IndexHigh'] = this.indexHigh;
    data['IndexLow'] = this.indexLow;
    data['AbsoluteChange'] = this.absoluteChange;
    data['StatTurnOver'] = this.statTurnOver;
    data['IndexName'] = this.indexName;
    data['IndexType'] = this.indexType;
    return data;
  }
}

class MarketStatus {
  bool status;
  String asOfDate;

  MarketStatus({this.status, this.asOfDate});

  MarketStatus.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    asOfDate = json['AsOfDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    data['AsOfDate'] = this.asOfDate;
    return data;
  }
}

class FloorSheets {
  int sN;
  int iD;
  int rate;
  int shareQuantity;
  int amount;
  String companyCode;
  int buyerBroker;
  int sellerBroker;
  String contractNo;

  FloorSheets(
      {this.sN,
      this.iD,
      this.rate,
      this.shareQuantity,
      this.amount,
      this.companyCode,
      this.buyerBroker,
      this.sellerBroker,
      this.contractNo});

  FloorSheets.fromJson(Map<String, dynamic> json) {
    sN = json['SN'];
    iD = json['ID'];
    rate = json['Rate'];
    shareQuantity = json['ShareQuantity'];
    amount = json['Amount'];
    companyCode = json['CompanyCode'];
    buyerBroker = json['BuyerBroker'];
    sellerBroker = json['SellerBroker'];
    contractNo = json['contractNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['SN'] = this.sN;
    data['ID'] = this.iD;
    data['Rate'] = this.rate;
    data['ShareQuantity'] = this.shareQuantity;
    data['Amount'] = this.amount;
    data['CompanyCode'] = this.companyCode;
    data['BuyerBroker'] = this.buyerBroker;
    data['SellerBroker'] = this.sellerBroker;
    data['contractNo'] = this.contractNo;
    return data;
  }
}
