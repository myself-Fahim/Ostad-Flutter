import 'dart:ui';
import 'package:flutter/material.dart';
void main(){

  runApp(
      App()
  );

}
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homescreen()
    );
  }
}
class Homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar:AppBar(
          leading: Icon(Icons.add_business_outlined),
          title: Text('Home'),
          actions:[Icon(Icons.search)],
          centerTitle:true,
          backgroundColor: Colors.green,
          elevation: 70,
          toolbarHeight: 100,
        ),
        body:Center(
            child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('This is mod 5 Assignmnt',style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold
                  ),
                  ),

                  RichText(text: TextSpan(
                      text: 'My ',style: TextStyle(
                      fontSize: 18,
                      color: Colors.red
                  ),
                      children: [
                        TextSpan(
                            text: 'phone ',style: TextStyle(
                            fontSize:13,
                            color: Colors.blue

                        )

                        ),
                        TextSpan(
                            text: 'name ',style: TextStyle(
                            fontSize: 16,
                            color: Colors.purple
                        )

                        ),
                        TextSpan(
                            text: 'POCO X3',style: TextStyle(
                            fontSize: 20,
                            color: Colors.amber
                        )

                        )
                      ]
                  )
                  )
                ]
            )
        )
    );
  }
}




