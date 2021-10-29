import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/news_api.dart';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as dio;
import 'package:provider/provider.dart';

import 'Auth/google_auth.dart';
import 'model/model.dart';

class DisplayArticles extends StatelessWidget {
  const DisplayArticles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Articles'),
        actions: [
          TextButton.icon(
            onPressed: () {
              final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: true);
              provider.logout();
            },
            label: const Text(""),
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: (_futureBuilder(context)),
    );
  }
}

FutureBuilder<Data> _futureBuilder(BuildContext context) {
  final client = Client(dio.Dio()).getTasks();

  return FutureBuilder<Data>(
    future: client,
    builder: (context, snapshot) {
      try {
        if (snapshot.connectionState == ConnectionState.done) {
          final List<Articles> post = snapshot.data!.articles;
          return _buildPost(context, post);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      } on DioError catch (e) {
        if (e.type == DioErrorType.response) {
          print('catched');
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (e.type == DioErrorType.connectTimeout) {
          print('check your connection');
        }
        if (e.type == DioErrorType.receiveTimeout) {
          print('unable to connect to the server');
        }
        if (e.type == DioErrorType.other) {
          print('Something went wrong');
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

Widget _buildPost(BuildContext context, List<Articles> post) {
  return ListView.builder(
      itemCount: post.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          elevation: 4,
          child: Container(
            padding: EdgeInsets.all(12.0),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              (post[index].urlToImage),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              post[index].title,
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(post[index].description,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
