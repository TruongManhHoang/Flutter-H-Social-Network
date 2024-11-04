import 'dart:async';
import 'dart:ffi';

import 'package:dio/dio.dart';

class ReelService {
  const ReelService({required this.dio});
  final Dio dio;

  Future<dynamic> getAllReel(String token) async {
    try {
      final res = await dio.get('/reels',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> createReel(String token, Map<String, dynamic> data) async {
    try {
      final res = await dio.post('/reels',
          data: data,
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> updateProfileUser(
      String token, Map<String, dynamic> data) async {
    try {
      final res = await dio.put('/users',
          data: data,
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      print('Error deleting post: $e');
      rethrow;
    }
  }

  Future<dynamic> getProfileUser(String token) async {
    try {
      final res = await dio.get('/users/profile',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      print('Error deleting post: $e');
      rethrow;
    }
  }

  Future<dynamic> followUser(String token, int id) async {
    try {
      final res = await dio.put('/users/follow/$id',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      print('Error deleting post: $e');
      rethrow;
    }
  }
}
