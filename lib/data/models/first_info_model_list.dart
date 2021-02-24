class FirstInfoModelList {
  FirstInfoModel d;

  FirstInfoModelList({this.d});

  FirstInfoModelList.fromJson(Map<String, dynamic> json) {
    d = json['d'] != null ? new FirstInfoModel.fromJson(json['d']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.d != null) {
      data['d'] = this.d.toJson();
    }
    return data;
  }
}

class FirstInfoModel {
  String sType;
  List<IndexInfo> indexInfo;
  List<ShareType> shareType;
  List<StockList> stockList;
  Null companyInfo;
  SettingsInfo settingsInfo;
  List<BrokerCommissions> brokerCommissions;
  MarketStatus marketStatus;
  List<StockIndices> stockIndices;

  FirstInfoModel(
      {this.sType,
      this.indexInfo,
      this.shareType,
      this.stockList,
      this.companyInfo,
      this.settingsInfo,
      this.brokerCommissions,
      this.marketStatus,
      this.stockIndices});

  FirstInfoModel.fromJson(Map<String, dynamic> json) {
    sType = json['__type'];
    if (json['IndexInfo'] != null) {
      indexInfo = new List<IndexInfo>();
      json['IndexInfo'].forEach((v) {
        indexInfo.add(new IndexInfo.fromJson(v));
      });
    }
    if (json['ShareType'] != null) {
      shareType = new List<ShareType>();
      json['ShareType'].forEach((v) {
        shareType.add(new ShareType.fromJson(v));
      });
    }
    if (json['StockList'] != null) {
      stockList = new List<StockList>();
      json['StockList'].forEach((v) {
        stockList.add(new StockList.fromJson(v));
      });
    }
    companyInfo = json['CompanyInfo'];
    settingsInfo = json['SettingsInfo'] != null
        ? new SettingsInfo.fromJson(json['SettingsInfo'])
        : null;
    if (json['BrokerCommissions'] != null) {
      brokerCommissions = new List<BrokerCommissions>();
      json['BrokerCommissions'].forEach((v) {
        brokerCommissions.add(new BrokerCommissions.fromJson(v));
      });
    }
    marketStatus = json['MarketStatus'] != null
        ? new MarketStatus.fromJson(json['MarketStatus'])
        : null;
    if (json['StockIndices'] != null) {
      stockIndices = new List<StockIndices>();
      json['StockIndices'].forEach((v) {
        stockIndices.add(new StockIndices.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['__type'] = this.sType;
    if (this.indexInfo != null) {
      data['IndexInfo'] = this.indexInfo.map((v) => v.toJson()).toList();
    }
    if (this.shareType != null) {
      data['ShareType'] = this.shareType.map((v) => v.toJson()).toList();
    }
    if (this.stockList != null) {
      data['StockList'] = this.stockList.map((v) => v.toJson()).toList();
    }
    data['CompanyInfo'] = this.companyInfo;
    if (this.settingsInfo != null) {
      data['SettingsInfo'] = this.settingsInfo.toJson();
    }
    if (this.brokerCommissions != null) {
      data['BrokerCommissions'] =
          this.brokerCommissions.map((v) => v.toJson()).toList();
    }
    if (this.marketStatus != null) {
      data['MarketStatus'] = this.marketStatus.toJson();
    }
    if (this.stockIndices != null) {
      data['StockIndices'] = this.stockIndices.map((v) => v.toJson()).toList();
    }
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

class ShareType {
  int typeID;
  String type;

  ShareType({this.typeID, this.type});

  ShareType.fromJson(Map<String, dynamic> json) {
    typeID = json['TypeID'];
    type = json['Type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TypeID'] = this.typeID;
    data['Type'] = this.type;
    return data;
  }
}

class StockList {
  String a;
  String b;
  String c;
  String d;
  String e;
  String f;
  String g;
  String h;
  String i;
  String j;
  String k;
  int l;
  String m;
  String n;

  StockList(
      {this.a,
      this.b,
      this.c,
      this.d,
      this.e,
      this.f,
      this.g,
      this.h,
      this.i,
      this.j,
      this.k,
      this.l,
      this.m,
      this.n});

  StockList.fromJson(Map<String, dynamic> json) {
    a = json['A'];
    b = json['B'];
    c = json['C'];
    d = json['D'];
    e = json['E'];
    f = json['F'];
    g = json['G'];
    h = json['H'];
    i = json['I'];
    j = json['J'];
    k = json['K'];
    l = json['L'];
    m = json['M'];
    n = json['N'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['A'] = this.a;
    data['B'] = this.b;
    data['C'] = this.c;
    data['D'] = this.d;
    data['E'] = this.e;
    data['F'] = this.f;
    data['G'] = this.g;
    data['H'] = this.h;
    data['I'] = this.i;
    data['J'] = this.j;
    data['K'] = this.k;
    data['L'] = this.l;
    data['M'] = this.m;
    data['N'] = this.n;
    return data;
  }
}

class SettingsInfo {
  int generalSettingID;
  double seboCommissionRate;
  int individualCapitalGainRate;
  int institutionalCapitalGainRate;
  int nameTransferFee;
  int androidAppVersion;
  int iOSAppVersion;

  SettingsInfo(
      {this.generalSettingID,
      this.seboCommissionRate,
      this.individualCapitalGainRate,
      this.institutionalCapitalGainRate,
      this.nameTransferFee,
      this.androidAppVersion,
      this.iOSAppVersion});

  SettingsInfo.fromJson(Map<String, dynamic> json) {
    generalSettingID = json['GeneralSettingID'];
    seboCommissionRate = json['SeboCommissionRate'];
    individualCapitalGainRate = json['IndividualCapitalGainRate'];
    institutionalCapitalGainRate = json['InstitutionalCapitalGainRate'];
    nameTransferFee = json['NameTransferFee'];
    androidAppVersion = json['AndroidAppVersion'];
    iOSAppVersion = json['IOSAppVersion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['GeneralSettingID'] = this.generalSettingID;
    data['SeboCommissionRate'] = this.seboCommissionRate;
    data['IndividualCapitalGainRate'] = this.individualCapitalGainRate;
    data['InstitutionalCapitalGainRate'] = this.institutionalCapitalGainRate;
    data['NameTransferFee'] = this.nameTransferFee;
    data['AndroidAppVersion'] = this.androidAppVersion;
    data['IOSAppVersion'] = this.iOSAppVersion;
    return data;
  }
}

class BrokerCommissions {
  int brokerCommissionID;
  int minimumValue;
  int maximumValue;
  double brokerCommissionRate;

  BrokerCommissions(
      {this.brokerCommissionID,
      this.minimumValue,
      this.maximumValue,
      this.brokerCommissionRate});

  BrokerCommissions.fromJson(Map<String, dynamic> json) {
    brokerCommissionID = json['BrokerCommissionID'];
    minimumValue = json['MinimumValue'];
    maximumValue = json['MaximumValue'];
    brokerCommissionRate = json['BrokerCommissionRate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['BrokerCommissionID'] = this.brokerCommissionID;
    data['MinimumValue'] = this.minimumValue;
    data['MaximumValue'] = this.maximumValue;
    data['BrokerCommissionRate'] = this.brokerCommissionRate;
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

class StockIndices {
  String name;
  int type;

  StockIndices({this.name, this.type});

  StockIndices.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    type = json['Type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['Type'] = this.type;
    return data;
  }
}
