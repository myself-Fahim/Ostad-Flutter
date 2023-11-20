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
///Route
class Homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home',style: TextStyle(
                fontSize: 30
            ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: (){
                  ///Navigation
                  ///Route Homescreen to Route Setting Screen
                  ///Navigation (push,pop,replace,replaceAll,removeUntil
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:(context)=>OrderScreen()
                      )
                  );
                },
                child: Text('Tap for Order'),
              ),
            ),

            ElevatedButton(
                onPressed: (){
                  ///Navigation
                  ///Route Homescreen to Route Setting Screen
                  ///Navigation (push,pop,replace,replaceAll,removeUntil
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:(context)=>SettingScreen()
                      )
                  );
                },
                child: Text('Go to settings')
            )
          ],
        ),
      ),
    );
  }
}
///Route
class SettingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Settings',style: TextStyle(
                fontSize: 30
            ),
            ),
          ],
        ),
      ),
    );
  }
}
///Route
class OrderScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Order'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Order',style: TextStyle(
                fontSize: 30
            ),
            ),
            ElevatedButton(onPressed:(){

              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SettingScreen()
                  )
              );
            } ,
                child:Text('Go To Settings')
            )
          ],
        ),
      ),
    );
  }
}