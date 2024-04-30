import 'package:first/user_list.dart';
import 'package:flutter/material.dart' ;

class UserListPage extends StatefulWidget {
  const UserListPage({super.key});

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("User List"),
      ),
      body: const UserListWidget(),
    );
  }
}