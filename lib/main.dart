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
      home:CounterScreen()
    );
  }
}
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: Icon(Icons.home),
      ),

      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$counter',style: Theme.of(context).textTheme.displayLarge),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder:(context) => ProfileScreen(username:'Ash_Fahim')
                 ),
              );

            }, child:Text('Go to profile')
            )
          ],
        ),
        // child:Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text('$counter',style: Theme.of(context).textTheme.displayLarge,),
        //     IconButton(onPressed: (){
        //       counter+=1;
        //       setState(() {
        //       });
        //     },
        //         icon: Icon(Icons.add)),
        //     TextButton(onPressed: (){
        //       counter=0;
        //       setState(() {});
        //     }, child: Text('Reset')
        //     )
        //   ],
        // ),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          counter+=1;
          setState(() {});
        },
        child: Icon(Icons.add),
      )
    );
  }
}

///widget Class
class ProfileScreen extends StatefulWidget {
  final String username;
  const ProfileScreen({super.key,required this.username});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

///State class
class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfileScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.username,style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600
             ),
            ),
          ],
        ),
      ),
    );
  }
}



