import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:my_share/data/data_sources/broker_data_source.dart';
import 'package:my_share/data/models/no_params.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final logger = Logger();
  @override
  void initState() {
    getBrokerFromApi();
    super.initState();
  }

  getBrokerFromApi() {
    Dio dio = Dio();
    final brokerDataSource = BrokerDataSource(dio);
    var data = brokerDataSource.getBrokers(NoParams());
    logger.i(data);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
      ),
    );
  }
}
