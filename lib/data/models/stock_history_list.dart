import 'first_info_model_list.dart';

class StockHistoryList {
  StockHistory d;

  StockHistoryList({this.d});

  StockHistoryList.fromJson(Map<String, dynamic> json) {
    d = json['d'] != null ? new StockHistory.fromJson(json['d']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.d != null) {
      data['d'] = this.d.toJson();
    }
    return data;
  }
}

class StockHistory {
  Stock stock;
  List<StockList> stockList;

  CompanyFinancialSummary companyFinancialSummary;

  StockHistory({this.stock, this.stockList, this.companyFinancialSummary});

  StockHistory.fromJson(Map<String, dynamic> json) {
    stock = json['Stock'] != null ? new Stock.fromJson(json['Stock']) : null;
    if (json['StockList'] != null) {
      stockList = new List<StockList>();
      json['StockList'].forEach((v) {
        stockList.add(new StockList.fromJson(v));
      });
    }
    companyFinancialSummary = json['CompanyFinancialSummary'] != null
        ? new CompanyFinancialSummary.fromJson(json['CompanyFinancialSummary'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.stock != null) {
      data['Stock'] = this.stock.toJson();
    }
    if (this.stockList != null) {
      data['StockList'] = this.stockList.map((v) => v.toJson()).toList();
    }
    if (this.companyFinancialSummary != null) {
      data['CompanyFinancialSummary'] = this.companyFinancialSummary.toJson();
    }
    return data;
  }
}

class Stock {
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
  String l;
  String m;
  String n;
  String o;
  String p;

  Stock(
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
      this.n,
      this.o,
      this.p});

  Stock.fromJson(Map<String, dynamic> json) {
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
    o = json['O'];
    p = json['P'];
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
    data['O'] = this.o;
    data['P'] = this.p;
    return data;
  }
}

class CompanyFinancialSummary {
  double ePS;
  double nPS;
  int paidUpValue;
  int paidUpCapital;
  int listedShare;
  int totalPaidUpValue;
  int bonusShare;
  String companyCode;
  double averagePrice;

  CompanyFinancialSummary(
      {this.ePS,
      this.nPS,
      this.paidUpValue,
      this.paidUpCapital,
      this.listedShare,
      this.totalPaidUpValue,
      this.bonusShare,
      this.companyCode,
      this.averagePrice});

  CompanyFinancialSummary.fromJson(Map<String, dynamic> json) {
    ePS = json['EPS'];
    nPS = json['NPS'];
    paidUpValue = json['PaidUpValue'];
    paidUpCapital = json['PaidUpCapital'];
    listedShare = json['ListedShare'];
    totalPaidUpValue = json['TotalPaidUpValue'];
    bonusShare = json['BonusShare'];
    companyCode = json['CompanyCode'];
    averagePrice = json['AveragePrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['EPS'] = this.ePS;
    data['NPS'] = this.nPS;
    data['PaidUpValue'] = this.paidUpValue;
    data['PaidUpCapital'] = this.paidUpCapital;
    data['ListedShare'] = this.listedShare;
    data['TotalPaidUpValue'] = this.totalPaidUpValue;
    data['BonusShare'] = this.bonusShare;
    data['CompanyCode'] = this.companyCode;
    data['AveragePrice'] = this.averagePrice;
    return data;
  }
}
