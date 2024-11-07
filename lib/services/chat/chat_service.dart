import 'dart:async';
import 'dart:ffi';

import 'package:dio/dio.dart';

class ChatService {
  const ChatService({required this.dio});
  final Dio dio;

  Future<dynamic> getAllChat() async {
    try {
      final res = await dio.get(
        '/chats',
      );
      return res;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> createChat(String token, Map<String, dynamic> data) async {
    try {
      final res = await dio.post('/chats',
          data: data,
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> findUserChat(String token) async {
    try {
      final res = await dio.put('chats/user',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return res;
    } catch (e) {
      print('Error deleting post: $e');
      rethrow;
    }
  }

  // Future<dynamic> getProfileUser(String token) async {
  //   try {
  //     final res = await dio.get('/users/profile',
  //         options: Options(headers: {'Authorization': 'Bearer $token'}));
  //     return res;
  //   } catch (e) {
  //     print('Error deleting post: $e');
  //     rethrow;
  //   }
  // }

  // Future<dynamic> followUser(String token, int id) async {
  //   try {
  //     final res = await dio.put('/users/follow/$id',
  //         options: Options(headers: {'Authorization': 'Bearer $token'}));
  //     return res;
  //   } catch (e) {
  //     print('Error deleting post: $e');
  //     rethrow;
  //   }
  // }
}
