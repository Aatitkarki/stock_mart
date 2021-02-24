class TodaySharePriceModelList {
  D d;

  TodaySharePriceModelList({this.d});

  TodaySharePriceModelList.fromJson(Map<String, dynamic> json) {
    d = json['d'] != null ? new D.fromJson(json['d']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.d != null) {
      data['d'] = this.d.toJson();
    }
    return data;
  }
}

class D {
  NepseIndex nepseIndex;
  List<SharePrices> sharePrices;

  D({this.nepseIndex, this.sharePrices});

  D.fromJson(Map<String, dynamic> json) {
    nepseIndex = json['NepseIndex'] != null
        ? new NepseIndex.fromJson(json['NepseIndex'])
        : null;
    if (json['SharePrices'] != null) {
      sharePrices = new List<SharePrices>();
      json['SharePrices'].forEach((v) {
        sharePrices.add(new SharePrices.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.nepseIndex != null) {
      data['NepseIndex'] = this.nepseIndex.toJson();
    }
    if (this.sharePrices != null) {
      data['SharePrices'] = this.sharePrices.map((v) => v.toJson()).toList();
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

class SharePrices {
  int iD;
  String stockID;
  String stockSymbol;
  int noOfTransaction;
  double maxPrice;
  double minPrice;
  double closingPrice;
  int tradedShares;
  double tradedAmount;
  double previousClosing;
  double difference;
  double percentDifference;
  String date;
  String stockName;

  SharePrices(
      {this.iD,
      this.stockID,
      this.stockSymbol,
      this.noOfTransaction,
      this.maxPrice,
      this.minPrice,
      this.closingPrice,
      this.tradedShares,
      this.tradedAmount,
      this.previousClosing,
      this.difference,
      this.percentDifference,
      this.date,
      this.stockName});

  SharePrices.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    stockID = json['StockID'];
    stockSymbol = json['StockSymbol'];
    noOfTransaction = json['NoOfTransaction'];
    maxPrice = json['MaxPrice'];
    minPrice = json['MinPrice'];
    closingPrice = json['ClosingPrice'];
    tradedShares = json['TradedShares'];
    tradedAmount = json['TradedAmount'];
    previousClosing = json['PreviousClosing'];
    difference = json['Difference'];
    percentDifference = json['PercentDifference'];
    date = json['Date'];
    stockName = json['StockName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['StockID'] = this.stockID;
    data['StockSymbol'] = this.stockSymbol;
    data['NoOfTransaction'] = this.noOfTransaction;
    data['MaxPrice'] = this.maxPrice;
    data['MinPrice'] = this.minPrice;
    data['ClosingPrice'] = this.closingPrice;
    data['TradedShares'] = this.tradedShares;
    data['TradedAmount'] = this.tradedAmount;
    data['PreviousClosing'] = this.previousClosing;
    data['Difference'] = this.difference;
    data['PercentDifference'] = this.percentDifference;
    data['Date'] = this.date;
    data['StockName'] = this.stockName;
    return data;
  }
}
