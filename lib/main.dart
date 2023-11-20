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

        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 250,
                child: Text("Wellcome",style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
                ),
                alignment: Alignment.center,
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.black),
                    borderRadius:
                    //BorderRadius.all(Radius.circular(16)),
                    BorderRadius.only(topLeft:Radius.circular(16),bottomRight: Radius.circular(16))

                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      textStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)
                      )
                  ),
                  onPressed: (){
                    print("Light ON");
                  },
                  onLongPress:(){
                    print("Turn on successfully");
                  },
                  child:Text("Switch"),

                ),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.green,
                    textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  onPressed: (){
                    print("Windows Restarting");
                  },
                  child:Text("Restart")
              ),
              IconButton(
                  onPressed: (){
                    print("File add successfully");
                  },
                  icon: Icon(Icons.add)
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.pinkAccent,
                        textStyle: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600
                        ),
                        padding: EdgeInsets.all(16)
                    ),
                    onPressed:(){
                      print("Outline Button Pressed");
                    }, child:Text("Outlined Button")
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.blue,
                    filled: true,
                    hintText: "Enter Email Address",
                    hintStyle: TextStyle(
                        color: Colors.black45
                    ),
                    suffixIcon: Icon(Icons.email_outlined,color: Colors.black54,),
                    label: Text("Email Address",style: TextStyle(
                        color: Colors.black45,
                        fontSize: 15
                    ),
                    ),
                    border: OutlineInputBorder(),

                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                    ),

                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purpleAccent)
                    )

                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.blue,
                    filled: true,
                    hintText: "Enter Password",
                    hintStyle: TextStyle(
                        color: Colors.black45
                    ),
                    suffixIcon: Icon(Icons.password_outlined),
                    label: Text("Password",style: TextStyle(
                        fontSize: 15,
                        color: Colors.black45
                    ),
                    ),
                    border: OutlineInputBorder(),

                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                    ),

                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purpleAccent)
                    )
                ),
              ),

            ],
          ),
        )
    );
  }
}

