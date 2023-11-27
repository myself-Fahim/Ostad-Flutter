import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Home'),
        centerTitle: true,
        leading: Icon(Icons.home),
        actions: [Icon(Icons.add_business_outlined)],
      ),
      body: Column(
        children: [
          Switch(value: true, onChanged:(bool value){}),
          ElevatedButton(onPressed:(){
            showDialog(
              barrierDismissible: false,
                context: context, builder:(context) {
              return AlertDialog(
                title: Text('Alert'),
                content: Text('You are in Danger'),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child:Text('Cancel')),
                  TextButton(onPressed: (){}, child:Text('Ok')),
                 ],
                );
              }
            );
          } , child: Text('Show dialog')),
          ElevatedButton(onPressed: (){
            showAboutDialog(context: context,applicationName:"Book and Kick");
           }, child: Text('Show about Dialog')),
          ElevatedButton(onPressed: (){
            showModalBottomSheet(
              ///isDismissible: false,
              barrierColor: Colors.black54,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight:Radius.circular(15),
                    topLeft: Radius.circular(15),
                  )
                ),
                context:context, builder:(context){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Argentina 1-0 Brazil'),
                  ],
                ),
              );
             }
            );
          },
              child:Text("Show Sheet")
          )
         ],
      ),

    );
  }
}