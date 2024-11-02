import 'dart:async';

import 'package:dio/dio.dart';

class AuthService {
  const AuthService({required this.dio});
  final Dio dio;

  Future<dynamic> login(Map<String, dynamic> data) async {
    try {
      final res = await dio.post('/auth/signIn', data: data);
      return res;
    } catch (e) {
      rethrow;
    }
  }
}
