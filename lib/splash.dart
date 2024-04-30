import 'package:flutter/material.dart' ;


class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar"),
        centerTitle: false,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.menu)),
      ),
      body: SizedBox(
        width: 200,
        height: 200,
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.red ,
                borderRadius : BorderRadius.circular(100)
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 10),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100)
                    ),
                    width: 50,
                    child: Icon(Icons.camera, color: Colors.white),
                  ),
                ),
              ),
            ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
    );
  }
}
