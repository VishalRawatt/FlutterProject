import 'package:first/model/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http ;
import 'dart:convert';

class ApiCall extends StatefulWidget {
  const ApiCall ({super.key});

  @override
  State<ApiCall> createState() => _State();
}

class _State extends State<ApiCall> {
  List<User> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rest Api call"),
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context,index){
            final userData = users[index] ;
            final slug = userData.slug ;
            return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(userData.profile_image.small),
              ),
              title: Text(slug),
              subtitle: Text(userData.user.username),
            ) ;
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: apiCalled,
        backgroundColor: Colors.blue,),
    );
  }

  Future<void> apiCalled() async {
    print("Api is called");
    final response = await http.get(Uri.parse(
        "https://api.unsplash.com/photos/?client_id=fbAYJ-YA03rijST_XeYAJbnXhReAm2EyEf-8M2H2leM"));

    if (response.statusCode == 200) {
      final List<dynamic> dataList = jsonDecode(response.body) ;
      final transform = dataList.map((e){
        final userName = UserName(
          username: e['user']['username'],
          first_name: e['user']['first_name'],
          last_name: e['user']['last_name'],
        );
        final profileImage = ProfilePhoto(
            small: e['user']['profile_image']['small'],
            medium: e['user']['profile_image']['medium'],
            large: e['user']['profile_image']['large'],
        );
        return User(
          id: e['id'],
          slug : e['slug'],
          profile_image: profileImage ,
          user: userName ,
        );
      }).toList();

      setState(() {
        users = transform;
      });
      print("Data fetched");
    }else{
      print("Error in fetching data") ;
    }
  }
}
