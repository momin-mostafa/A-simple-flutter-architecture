import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit_flutter_tryout/data/model/model.dart';

part 'data_source.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class DataSource{
  factory DataSource(Dio dio,{String baseUrl}) = _DataSource;

  @GET('/posts')
  Future<List<PostModel>> getPosts();
}