import 'package:flutter/cupertino.dart';

void main(){
  runApp(
      MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home:Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading:Icon(CupertinoIcons.home),
        middle: Text('Home'),
        trailing: CupertinoSwitch(
          onChanged: (bool onchange){},value: true,
        ),
      ),
        child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Home'),
                Text('Home'),
                Text('Home'),
                Text('Home'),
                Text('Home'),
                CupertinoButton(child: Text('Tap'), onPressed:(){}),
                CupertinoButton.filled(child: Text('Tap'), onPressed:(){}),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoTextField(),
                ),
                CupertinoTabBar(items:[
                  BottomNavigationBarItem(label:'Home',icon:Icon(CupertinoIcons.home)),
                  BottomNavigationBarItem(label:'Home',icon:Icon(CupertinoIcons.home)),
                  BottomNavigationBarItem(label:'Home',icon:Icon(CupertinoIcons.home)),
                ])
              ],
            )
        ),
    );
  }
}

