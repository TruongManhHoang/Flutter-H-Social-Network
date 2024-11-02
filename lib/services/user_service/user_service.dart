import 'dart:async';
import 'dart:ffi';

import 'package:dio/dio.dart';

class UserService {
  const UserService({required this.dio});
  final Dio dio;

  Future<dynamic> getUser(String token) async {
    try {
      final res = await dio.get('/users',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> createUser(String token, Map<String, dynamic> data) async {
    try {
      final res = await dio.post(
        '/users',
        data: data,
      );
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

  // Future<dynamic> getUserById(int id) async {
  //   try {
  //     final res = await dio.get(
  //       '/users/$id',
  //     );
  //     return res;
  //   } catch (e) {
  //     print('Error deleting post: $e');
  //     rethrow;
  //   }
  // }
}
