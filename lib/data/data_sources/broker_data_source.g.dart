// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'broker_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _BrokerDataSource implements BrokerDataSource {
  _BrokerDataSource(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'http://nepse.info/Modules/Admin/ShareApi/ShareApi.asmx';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<BrokerListModel> getBrokers(params) async {
    ArgumentError.checkNotNull(params, 'params');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(params?.toJson() ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>('/GetBrokers',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BrokerListModel.fromJson(_result.data);
    return value;
  }
}
