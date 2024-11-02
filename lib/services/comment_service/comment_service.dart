import 'dart:async';

import 'package:dio/dio.dart';

class CommentService {
  const CommentService({required this.dio});
  final Dio dio;

  Future<dynamic> getAllComment(
    String token,
  ) async {
    try {
      final res = await dio.get('/comments',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> createComment(
      int postId, String token, Map<String, dynamic> data) async {
    try {
      final res = await dio.post('/comments/post/$postId',
          data: data,
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> likeComment(String token, int id) async {
    try {
      final res = await dio.put('/comments/like/$id',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      print('Erorr: $e');
      rethrow;
    }
  }
}
