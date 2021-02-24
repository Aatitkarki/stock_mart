class IndicesModelList {
  IndicesModel d;

  IndicesModelList({this.d});

  IndicesModelList.fromJson(Map<String, dynamic> json) {
    d = json['d'] != null ? new IndicesModel.fromJson(json['d']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.d != null) {
      data['d'] = this.d.toJson();
    }
    return data;
  }
}

class IndicesModel {
  MarketStatus marketStatus;
  List<MarketSummary> marketSummary;
  List<IndexInfo> indexInfo;
  List<IndexData> indexData;

  IndicesModel(
      {this.marketStatus, this.marketSummary, this.indexInfo, this.indexData});

  IndicesModel.fromJson(Map<String, dynamic> json) {
    marketStatus = json['MarketStatus'] != null
        ? new MarketStatus.fromJson(json['MarketStatus'])
        : null;
    if (json['MarketSummary'] != null) {
      marketSummary = new List<MarketSummary>();
      json['MarketSummary'].forEach((v) {
        marketSummary.add(new MarketSummary.fromJson(v));
      });
    }
    if (json['IndexInfo'] != null) {
      indexInfo = new List<IndexInfo>();
      json['IndexInfo'].forEach((v) {
        indexInfo.add(new IndexInfo.fromJson(v));
      });
    }
    if (json['IndexData'] != null) {
      indexData = new List<IndexData>();
      json['IndexData'].forEach((v) {
        indexData.add(new IndexData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.marketStatus != null) {
      data['MarketStatus'] = this.marketStatus.toJson();
    }
    if (this.marketSummary != null) {
      data['MarketSummary'] =
          this.marketSummary.map((v) => v.toJson()).toList();
    }
    if (this.indexInfo != null) {
      data['IndexInfo'] = this.indexInfo.map((v) => v.toJson()).toList();
    }
    if (this.indexData != null) {
      data['IndexData'] = this.indexData.map((v) => v.toJson()).toList();
    }
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

class MarketSummary {
  String key;
  String value;
  String date;

  MarketSummary({this.key, this.value, this.date});

  MarketSummary.fromJson(Map<String, dynamic> json) {
    key = json['Key'];
    value = json['Value'];
    date = json['Date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Key'] = this.key;
    data['Value'] = this.value;
    data['Date'] = this.date;
    return data;
  }
}

class IndexInfo {
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

  IndexInfo(
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

  IndexInfo.fromJson(Map<String, dynamic> json) {
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

class IndexData {
  String indexName;
  double indexValue;
  String date;
  int turnOver;

  IndexData({this.indexName, this.indexValue, this.date, this.turnOver});

  IndexData.fromJson(Map<String, dynamic> json) {
    indexName = json['IndexName'];
    indexValue = json['IndexValue'];
    date = json['Date'];
    turnOver = json['TurnOver'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IndexName'] = this.indexName;
    data['IndexValue'] = this.indexValue;
    data['Date'] = this.date;
    data['TurnOver'] = this.turnOver;
    return data;
  }
}
