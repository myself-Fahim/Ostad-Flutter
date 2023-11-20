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
        body:Center(
            child:Column(
                mainAxisAlignment:MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children:[
                  Text('Hello World',style: TextStyle(
                    fontSize: 30,
                  ),
                  ),

                  Text('Hello World',style: TextStyle(
                      fontSize: 30
                  ),
                  ),

                  Text('Hello World',style: TextStyle(
                      fontSize: 30
                  ),
                  ),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children:[
                        Text('Time',style: TextStyle(
                            fontSize: 30
                        ),
                        ),

                        Icon(Icons.access_alarm,size: 30),
                      ]
                  )
                ]
            )
        )
    );
  }

}
