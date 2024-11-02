import 'dart:async';

import 'package:dio/dio.dart';

class StoryService {
  const StoryService({required this.dio});
  final Dio dio;

  Future<dynamic> getStory(String token) async {
    try {
      final res = await dio.get('/stories',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> createStory(String token, Map<String, dynamic> data) async {
    try {
      final res = await dio.post('/stories',
          data: data,
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      rethrow;
    }
  }
}
