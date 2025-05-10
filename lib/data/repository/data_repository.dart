import 'package:retrofit_flutter_tryout/data/data_sources/data_source.dart';
import 'package:retrofit_flutter_tryout/data/model/model.dart';

// this can be singleton.
class DataRepository {
  DataSource dataSource;

  DataRepository(this.dataSource);

  Future<Result<List<PostModel>?>> getPosts() async {
    try {
      final body = await dataSource.getPosts();
      return Result.success(body);
    } catch (e) {
      return Result.failure(e.toString());
    }
  }
}

class Result<T> {
  final T? data;
  bool isSuccess;
  String? errorMessage;

  Result(this.data, this.isSuccess, this.errorMessage);

  factory Result.success(T data) {
    return Result(data, true, null);
  }

  factory Result.failure(String message) {
    return Result(null, false, message);
  }
}
