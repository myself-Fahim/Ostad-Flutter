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
class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String>students=[
    'fahim',
    'rahim',
    'karim',
    'shakib',
    'tamim',
    'kabir',
    'messi',
    'ronaldo',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),

      //body:ListView.builder
      // body: ListView.separated(
      //     itemCount: 100,
      //     itemBuilder:(context,index){
      //       return ListTile(
      //         title: Text('Item Number is $index'),
      //       );
      //     },
      //     separatorBuilder: (context,index){
      //       return Column(
      //         children: [
      //           Text('$index'),
      //           Divider(),
      //         ],
      //       );
      body: ListView.separated(
        itemCount: 8,
        itemBuilder:(context,index){
          return ListTile(
            title: Text("$index - ${students[index]}"),
          );
        },
        separatorBuilder: (context,index){
          return Divider();
        },
      ),

    );
  }
}

