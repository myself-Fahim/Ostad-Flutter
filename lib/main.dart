import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  // runApp(
  //   MaterialApp(
  //     home: Scaffold(
  //       body:Center(
  //         child: Text("Hello World"),
  //       ),
  //     ),
  //   )
  // );
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

class Homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("Home"),
        centerTitle:true,
        leading: Icon(Icons.home,color:Colors.lightBlueAccent,size: 30,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Text("WELLCOME",style: TextStyle(
                  fontSize: 25,
                ),
                ),

                Text("Home",style: TextStyle(
                    fontSize: 25
                ),
                ),
              ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Little Boy From Rosario",style: TextStyle(
                  fontSize: 25,
                  color: Colors.lightBlue
              ),
              ),
              Icon(Icons.accessible),
            ],
          ),
          ///Image.asset("images/ron.jpeg"),  //Import image from file

          Image.network("https://idsb.tmgrup.com.tr/ly/uploads/images/2022/12/19/247181.jpg",
            height: 175,
            //width: 200,
            //fit: BoxFit.scaleDown,
          ),
          RichText(text: TextSpan(
              text: 'To Register ',style: TextStyle(
              fontSize: 18,
              color: Colors.blue
          ),
              children: [
                TextSpan(
                  text:'Tap on ',
                ),
                TextSpan(
                    text: 'SignUp ',style: TextStyle(
                    fontSize: 22,
                    color:Colors.black54
                )
                ),
              ]
          )
          ) //Import image from network
        ],
      ),
    );
  }

}
