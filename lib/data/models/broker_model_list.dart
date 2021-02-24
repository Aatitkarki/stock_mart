import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class BrokerModelList {
  List<BrokerModel> d;

  BrokerModelList({this.d});

  BrokerModelList.fromJson(Map<String, dynamic> json) {
    if (json['d'] != null) {
      d = new List<BrokerModel>();
      json['d'].forEach((v) {
        d.add(new BrokerModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.d != null) {
      data['d'] = this.d.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BrokerModel {
  String sType;
  int brokerID;
  String firmName;
  String code;
  String telNo;
  String address;
  String remarks;
  bool isActive;

  BrokerModel(
      {this.sType,
      this.brokerID,
      this.firmName,
      this.code,
      this.telNo,
      this.address,
      this.remarks,
      this.isActive});

  BrokerModel.fromJson(Map<String, dynamic> json) {
    sType = json['__type'];
    brokerID = json['BrokerID'];
    firmName = json['FirmName'];
    code = json['Code'];
    telNo = json['TelNo'];
    address = json['Address'];
    remarks = json['Remarks'];
    isActive = json['IsActive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['__type'] = this.sType;
    data['BrokerID'] = this.brokerID;
    data['FirmName'] = this.firmName;
    data['Code'] = this.code;
    data['TelNo'] = this.telNo;
    data['Address'] = this.address;
    data['Remarks'] = this.remarks;
    data['IsActive'] = this.isActive;
    return data;
  }
}
