import 'package:dio/dio.dart';
import 'package:my_share/data/core/api_constants.dart';
import 'package:my_share/data/models/broker_model_list.dart';
import 'package:my_share/data/models/first_info_model_list.dart';
import 'package:my_share/data/models/floor_sheet_list.dart';
import 'package:my_share/data/models/indices_model_list.dart';
import 'package:my_share/data/models/request_model/broker_request_model.dart';
import 'package:my_share/data/models/stock_history_list.dart';
import 'package:my_share/data/models/today_share_price_list.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/http.dart';
part 'remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.BASE_URL)
abstract class RemoteDataSource {
  factory RemoteDataSource(Dio dio, {String baseUrl}) = _RemoteDataSource;

  @POST('/GetBrokers')
  Future<BrokerModelList> getBrokerList(
      @Body() BrokerRequestModel brokerRequestModel);

  @POST('/GetFirstInfos')
  Future<FirstInfoModelList> getFirstInfo();

  @POST('/GetFloorSheet')
  Future<FloorSheetList> getFloorSheet();

  @POST('/GetIndices')
  Future<IndicesModelList> getIndicesModelList();

  @POST('/GetTodaySharePrice')
  Future<TodaySharePriceModelList> getTodaySharePriceList();

  @POST('/GetStockHistory')
  Future<StockHistoryList> getStockHistoryList();
}
