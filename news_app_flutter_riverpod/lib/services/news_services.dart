import 'package:dio/dio.dart';
import 'package:news_app_flutter_riverpod/constants/constants.dart';

class NewsServices {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: Apiurls.baseUrl,
      responseType: ResponseType.json,
    ),
  );

  fetchNews() async {
    var response = await _dio.get('&language=en');
    return response.data;
  }
}
