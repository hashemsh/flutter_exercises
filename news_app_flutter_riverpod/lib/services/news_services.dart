import 'package:dio/dio.dart';
import 'package:news_app_flutter_riverpod/auth/api_key.dart';
import 'package:news_app_flutter_riverpod/constants/constants.dart';

class NewsServices {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: ApiUrls.baseUrl,
      responseType: ResponseType.json,
    ),
  );

  fetchNews() async {
    var response = await _dio.get('v2/top-headlines?country=us&apiKey=$apiKey');
    return response.data;
  }

  fetchNewsBySearching(String title) async {
    var response = await _dio.get('v2/everything?q=$title&apiKey=$apiKey');

    return response.data;
  }
}
