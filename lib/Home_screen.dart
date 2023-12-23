import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// MediaQuery is a class
    // print(MediaQuery.orientationOf(context));
    // Size size = MediaQuery.sizeOf(context);
    // print(size);
    // print(size.aspectRatio);
    // print(size.flipped);
    // print(size.width);
    // print(size.height);
    // print(MediaQuery.displayFeaturesOf(context));
   // print(MediaQuery.maybePlatformBrightnessOf(context));
    return Scaffold(
        appBar: AppBar(
          title: Text('Intro to RD'),
        ),
        body:LayoutBuilder(
            builder:(context,constraints) {
              if(constraints.maxWidth > 500){
                return Center(child: Text("Too Much Big"));
              }
              else
                {
                  return Center(
                    child: OrientationBuilder(
                        builder:(context,orientation){
                          //return Text(orientation == Orientation.portrait ? "Potrait" : "Landscape");
                          if(orientation == Orientation.portrait)
                            {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Text('Potrait'),
                                  Wrap(
                                    alignment:WrapAlignment.center,
                                    crossAxisAlignment: WrapCrossAlignment.center,
                                    children: [
                                      Text('dkjnjjdnnnnnnndjjjj'),
                                      Text('dkjnjjdnnnnnnndjjjj'),
                                      Text('dkjnjjdnnnnnnndjjjj'),
                                      Text('dkjnjjdnnnnnnndjjjj'),
                                      Text('dkjnjjdnnnnnnndjjjj'),
                                    ],
                                  )
                                ]
                              );
                            }
                          else
                            {
                              return Text('Landscape');
                            }
                        }
                    ),
                  );
                }
            }
        ),

    );
  }
}
