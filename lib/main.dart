import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turf_project/login.dart';
import 'package:turf_project/top_left_navigation.dart';
import 'package:intl/intl.dart';
import 'package:turf_project/landscape.dart';

class MainHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        final value = await showDialog(context: context, builder: (context){
          return AlertDialog(
            title: Text('Alert'),
            content: Text('Do you want to exit?'),
            backgroundColor: Colors.blueGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            actions: [
              TextButton(onPressed: (){
                Navigator.of(context).pop(false);
              }, child: Text('Cancel',style: TextStyle(
                color: Colors.black87,
              ),)),
              TextButton(onPressed: (){
                Navigator.of(context).pop(true);
              }, child: Text('Exit',style: TextStyle(
                color: Colors.black87,
              ),)),
            ],
          );
        });
        if(value!=null)
        {
          return Future.value(value);
        }
        else
        {
          return Future.value(false);
        }
      },
      child: Scaffold(
        body: OrientationBuilder(
          builder: (context, orientation) {
            return orientation == Orientation.portrait
                ? buildPortraitLayout(context)
                : buildLandscapeLayout(context);
          },
        ),
      ),
    );
  }
  Widget buildPortraitLayout(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppBar().preferredSize.height,
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          "Book & Kick",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 24,
            fontWeight: FontWeight.w800,
          ),
        ),
        leading: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TopLeftNavigation()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
          ),
          child: Icon(
            Icons.menu,
            color: Colors.white,
            size: 20,
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
            child: Container(
              child: Icon(
                Icons.login_sharp,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.only(left: 4.5),
                    height: screenHeight * 0.0399,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(screenWidth * 0.05),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Time: ${DateFormat('hh:mm').format(DateTime.now())}',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: screenHeight * 0.0399,
                    width: screenWidth * 0.08,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(screenWidth * 0.05),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Today: ${DateFormat('dd-MM-yyyy').format(DateTime.now())}',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: screenWidth * 0.95,
                height: screenHeight * 0.455,
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    Container(
                      child: Card(
                        child: Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TopLeftNavigation()),
                              );
                            },
                            child: Column(
                              children: [
                                Text(
                                  'Frenzy Sports Arena',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Image.asset(
                                  'assets/frenzy.jpg',
                                  height: screenHeight * 0.185,
                                  width: screenWidth * 0.427,
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        child: Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TopLeftNavigation()),
                              );
                            },
                            child: Column(
                              children: [
                                Text(
                                  'Timeout',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Image.asset(
                                  'assets/timeout.jpg',
                                  height: screenHeight * 0.185,
                                  width: screenWidth * 0.427,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        child: Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TopLeftNavigation()),
                              );
                            },
                            child: Column(
                              children: [
                                Text(
                                  'RS Dynamic Ground',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Image.asset(
                                  'assets/rs_dynamic.jpg',
                                  height: screenHeight * 0.185,
                                  width: screenWidth * 0.427,
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        child: Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TopLeftNavigation()),
                              );
                            },
                            child: Column(
                              children: [
                                Text(
                                  'D&C Arena',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Image.asset(
                                  'assets/d_and_c.jpg',
                                  height: screenHeight * 0.185,
                                  width: screenWidth * 0.427,
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );

  }

  Widget buildLandscapeLayout(BuildContext context) {
    return RotatePhone();
  }
}
