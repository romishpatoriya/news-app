import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';


import 'model.dart';
part 'news_api.g.dart';

@RestApi(baseUrl: 'https://newsapi.org/v2/everything?q=keyword&apiKey=e77004daf6cf4573aa755746337d3da2')

abstract class Client {
  factory Client(Dio dio, {String? baseUrl}) {
    dio.interceptors.add(LogInterceptor(responseBody: false,requestBody: false));
    dio.options = BaseOptions(
      headers: {
        'X-API-Version':'v2',
        'Accept': 'application/json',
        'q':'keyword',
        'apiKey':'e77004daf6cf4573aa755746337d3da2'
      }
    );
    return _Client(dio, baseUrl: baseUrl);
  }

  @GET('')
  Future<Data> getTasks();
}