import 'package:flutter/material.dart' ;

class UserListWidget extends StatelessWidget {
  const UserListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return getGridViewBuilder() ;
  }

  List<Person> getDummyData() {
    return [
      Person("User A", "Job A"),
      Person("User B", "Job B"),
      Person("User C", "Job C"),
      Person("User D", "Job D"),
      Person("User E", "Job E")
    ];
  }
  Widget normalList(){
    return ListView(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(100)),
          width: 200,
        ),
      Container(
        height: 200,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(100)),
        width: 200,
      ),
      Container(
        height: 200,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(100)),
        width: 200,
      ),
      Container(
        height: 200,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(100)),
        width: 200,
      ),
      Container(
        height: 200,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(100)),
        width: 200,
      ),
      Container(
        height: 200,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(100)),
        width: 200,
      )
      ],
    );
  }

  Widget getGridViewBuilder() {
    return GridView.builder(
        itemCount : getDummyData().length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
      itemBuilder: (context, index){
          final response = getDummyData()[index] ;
          return Container(
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(60),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color : Colors.black26,
                      spreadRadius: 10,
                    )
                  ],
                  color: Colors.white ,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(response.name ?? ""),
                    Text(response.job ?? ""),
                  ],
                ),
              ),
            ),
          );
  });
}

Widget getListViewBuilder(){
    return ListView.builder(
      itemCount: getDummyData().length,
      itemBuilder: (context, index){
        final response = getDummyData()[index];
        return ListTile(
          leading: Icon(Icons.accessibility_rounded),
          title: Text(response.name ?? ""),
          subtitle: Text(response.job ?? ""),
        );
      }
    );
}
}



class Person {
  String? name;
  String? job;

  Person(this.name, this.job);
}

