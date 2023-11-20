import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_project_1/Gridview.dart';

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
      home:Homescreen(),
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 0.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                textStyle: TextStyle(
                    fontSize: 16,
                    letterSpacing: 0.5
                )

            ),
          ),
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  textStyle: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      decoration:TextDecoration.underline
                  )
              )
          ),
          textTheme:TextTheme(
              bodyLarge:TextStyle(
                  color: Colors.green,
                  fontSize: 22
              ),
              bodyMedium: TextStyle(
                  color: Colors.indigo,
                  fontSize: 17
              ),
              bodySmall: TextStyle(
                  color: Colors.red,
                  fontSize: 10
              )
          )
      ),
      darkTheme: ThemeData(
        brightness:Brightness.dark,
        appBarTheme: AppBarTheme(
            color: Colors.indigo
        ),
      ),
      themeMode: ThemeMode.dark,
    );
  }
}
class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          leading: Icon(Icons.home_outlined),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome',style: Theme.of(context).textTheme.bodyLarge,),
                  Text('Welcome',style: Theme.of(context).textTheme.bodySmall,),
                  Text('Welcome',style: Theme.of(context).textTheme.bodyMedium,),
                  TextButton(onPressed: (){}, child:Text('Tap here')),
                  ElevatedButton(onPressed: (){}, child:Text('Tap')),
                  ElevatedButton(onPressed: (){}, child:Text('Tap')),
                  TextButton(onPressed: (){}, child:Text('Tap here',style: TextStyle(
                      decoration: TextDecoration.none
                  ),),
                  ),
                  TextButton(onPressed: (){}, child:Text('Tap here')),
                ]
            )
        )
    );
  }
}
