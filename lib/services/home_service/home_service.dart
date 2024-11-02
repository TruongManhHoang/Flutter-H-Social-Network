import 'dart:async';
import 'dart:ffi';

import 'package:dio/dio.dart';

class HomeService {
  const HomeService({required this.dio});
  final Dio dio;

  Future<dynamic> getPost(String token) async {
    try {
      final res = await dio.get('/posts',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> getPostByUser(String token) async {
    try {
      final res = await dio.get('/posts/user',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> getPostByUserId(int id) async {
    try {
      final res = await dio.get(
        '/posts/user/$id',
      );
      return res;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> createPost(String token, Map<String, dynamic> data) async {
    try {
      final res = await dio.post('/posts',
          data: data,
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> deletePost(String token, int postId) async {
    try {
      final res = await dio.delete('/posts/$postId',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      print('Error deleting post: $e');
      rethrow;
    }
  }

  Future<dynamic> likePost(String token, int postId) async {
    try {
      final res = await dio.put('/posts/like/$postId',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      print('Error deleting post: $e');
      rethrow;
    }
  }

  Future<dynamic> savePost(String token, int postId) async {
    try {
      final res = await dio.put('/posts/save/$postId',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      print('Error deleting post: $e');
      rethrow;
    }
  }
}
