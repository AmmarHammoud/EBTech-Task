import 'package:dio/dio.dart';
import '../constants.dart';
import 'end_points.dart';

abstract class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(baseUrl: Constants.baseUrl, receiveDataWhenStatusError: true),
    );
  }

  static Future<Response> getPosts() async {
    return await dio.get(
      Endpoints.posts,
      options: Options(
        followRedirects: false,
        validateStatus: (status) {
          return true;
        },
      ),
    );
  }
}
