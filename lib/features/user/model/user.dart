import 'dart:convert';

import 'package:boilerplate/features/home/model/post.dart';

class User {
  int id;
  String firstName;
  String lastName;
  String email;
  String password;
  String gender;
  List<Post> savedPosts;
  List<int> followers;
  List<int> followings;

  User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.gender,
      required this.savedPosts,
      required this.followers,
      required this.followings});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? 0,
      firstName: json['firstName'] ?? '',
      lastName: json['lastName'] ?? '',
      email: json['email'] ?? '',
      password: json['password'] ?? '',
      gender: json['gender'] ?? '',
      savedPosts: (json['savedPosts'] is List)
          ? (json['savedPosts'] as List<dynamic>)
              .map((item) => Post.fromJson(item))
              .toList()
          : [],
      followers: (json['followers'] is List)
          ? List<int>.from(json['followers'].map((item) => item as int))
          : [],
      followings: (json['followings'] is List)
          ? List<int>.from(json['followings'].map((item) => item as int))
          : [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
      'gender': gender,
      'savedPosts': savedPosts.map((post) => post.toJson()).toList(),
      'followers': followers,
      'followings': followings,
    };
  }
}
