import 'package:basic_components_demo/dio_retrofit_example/user_api_service.dart';
import 'package:basic_components_demo/dio_retrofit_example/user_list.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class UserListView extends StatefulWidget{
  _UserListViewState createState() => _UserListViewState();
}

class _UserListViewState extends State<UserListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        centerTitle: true,
        title: const Text(
          'Dio/Retrofit REST API',
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: _buildBody(context),
    );
  }

  final client = RestClient(Dio(BaseOptions(contentType: "application/json")));
  int numberUserToRequest = 10;

  FutureBuilder<UserList> _buildBody(BuildContext context) {
    return FutureBuilder<UserList>(
      future: client.getUsers(numberUserToRequest),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
          final UserList userList = snapshot.data!;
          if (userList.results == null || userList.results!.isEmpty) {
            return const Text("NO DATA");
          } else {
            return _buildPosts(context, userList.results!);
          }
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  LazyLoadScrollView _buildPosts(BuildContext context, List<Results> results) {
    return LazyLoadScrollView(
        child: ListView.builder(
          itemCount: results.length,
          padding: const EdgeInsets.all(8),
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              child: ListTile(
                title: Text(
                  (results[index].name?.title ?? "") + (results[index].name?.first ?? "") + (results[index].name?.last ?? ""),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(results[index].email ?? ""),
              ),
            );
          },
        ),
        onEndOfPage: () => _loadMore(),
    );
  }

  Future _loadMore() async {
      setState(() {
        numberUserToRequest += 10;
      });
  }
}