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

  Future<dynamic> likeReel(String token, int reelId) async {
    try {
      final res = await dio.put('/reels/like/$reelId',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      print('Error deleting post: $e');
      rethrow;
    }
  }

  Future<dynamic> deleteReel(String token, int reelId) async {
    try {
      final res = await dio.delete('/reels/$reelId',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      print('Error deleting post: $e');
      rethrow;
    }
  }

  Future<dynamic> getReelByUser(String token) async {
    try {
      final res = await dio.get('/reels/user',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      print('Error deleting post: $e');
      rethrow;
    }
  }
}
