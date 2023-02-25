// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:urluri/models/post.dart';
import 'package:http/http.dart' as http;


class RemoteServices {
  Future<List<Post>?> getData() async {
    var Client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await Client.get(uri);
    debugPrint(response as String?);
    // if (response.statusCode == 200) {
    //   var json = response.body;

    //   return postFromJson(json);
    // }
  }

  getPosts() {}
}
