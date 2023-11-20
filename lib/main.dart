import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
      MyApp()
  );
}
//Hot reload= ctrl+S
//Hot restart= ctrl+shift+\

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
      title: 'MyApp',
    );
  }
}
class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          centerTitle: true,
        ),
        body: Scrollbar(
          thickness: 13,
          radius: Radius.circular(16),
          child: ListView(
            //scrollDirection: Axis.horizontal,
            children: [
              ListTile(
                leading: Icon(Icons.android_outlined),
                title: Text('Username'),
                subtitle: Text('username@gmail.com'),
                trailing: Icon(Icons.arrow_right,size: 30,),
                onTap: (){
                  print('Tapped');
                },
              ),
              Divider(
                thickness: 1,
                color: Colors.pink,
                height: 5,
                indent: 16,
                endIndent: 16,
              ),

              ListTile(
                leading: Icon(Icons.android_outlined),
                title: Text('Username'),
                subtitle: Text('username@gmail.com'),
                trailing: Icon(Icons.arrow_right,size: 30,),
              ),

              Divider(
                thickness: 1,
                color: Colors.pink,
                height: 5,
                indent: 16,
                endIndent: 16,
              ),

              ListTile(
                leading: Icon(Icons.android_outlined),
                title: Text('Username'),
                subtitle: Text('username@gmail.com'),
                trailing: Icon(Icons.arrow_right,size: 30,),
              ),

              Divider(
                thickness: 1,
                color: Colors.pink,
                height: 5,
                indent: 16,
                endIndent: 16,
              ),

              ListTile(
                leading: Icon(Icons.android_outlined),
                title: Text('Username'),
                subtitle: Text('username@gmail.com'),
                trailing: Icon(Icons.arrow_right,size: 30,),
              ),

              Divider(
                thickness: 1,
                color: Colors.pink,
                height: 5,
                indent: 16,
                endIndent: 16,
              ),
            ],
          ),
        )///

    );
  }
}

