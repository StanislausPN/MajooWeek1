import 'package:flutter/material.dart';
import 'package:majoo_botcamp/context_ext.dart';
import 'package:majoo_botcamp/first_task/first_task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Bootcamp Majoo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ViewInsetsPadding());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    final statusBar = mediaQuery.padding.top;

    final appbarwidget = AppBar(
      title: const Text('dynamic size'),
    );
    final double finalHeight =
        (screenHeight - appbarwidget.preferredSize.height - statusBar);

    return Scaffold(
      appBar: appbarwidget,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 480) {
            return LandscapeView(
              finalWidth: screenWidth,
              height: finalHeight,
            );
          } else {
            return PotraitView(
              finalHeight: finalHeight,
              screenWidth: screenWidth,
            );
          }
        },
      ),
    );
  }
}

class LandscapeView extends StatelessWidget {
  final double finalWidth;
  final double height;
  const LandscapeView(
      {Key? key, required this.height, required this.finalWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child:
          //  Column(
          //   crossAxisAlignment: CrossAxisAlignment.stretch,
          //   children: [
          // Container(
          //   height: height * 0.05,
          //   color: Colors.blueAccent,
          // ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          margin: const EdgeInsets.all(8),
          height: height, // - (height * 0.1),
          width: finalWidth * 0.4,
          color: Colors.yellowAccent,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: finalWidth * 0.25,
              height: height * 0.25,
              margin: const EdgeInsets.all(8),
              color: Colors.redAccent,
            ),
            Container(
              width: finalWidth * 0.25,
              height: height * 0.25,
              margin: const EdgeInsets.all(8),
              color: Colors.redAccent,
            ),
            Container(
              width: finalWidth * 0.25,
              height: height * 0.25,
              margin: const EdgeInsets.all(8),
              color: Colors.redAccent,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: finalWidth * 0.25,
              height: height * 0.25,
              margin: const EdgeInsets.all(8),
              color: Colors.redAccent,
            ),
            Container(
              width: finalWidth * 0.25,
              height: height * 0.25,
              margin: const EdgeInsets.all(8),
              color: Colors.redAccent,
            ),
            Container(
              width: finalWidth * 0.25,
              height: height * 0.25,
              margin: const EdgeInsets.all(8),
              color: Colors.redAccent,
            ),
          ],
        ),
      ]),
      //   ],
      // ),
    );
  }
}

class PotraitView extends StatelessWidget {
  final double finalHeight;
  final double screenWidth;
  const PotraitView(
      {Key? key, required this.finalHeight, required this.screenWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // Container(
      //   height: finalHeight * 0.05,
      //   color: Colors.blueAccent,
      // ),
      Container(
        height: finalHeight * 0.3,
        color: Colors.yellowAccent,
      ),
      Container(
          height: finalHeight * 0.7,
          color: Colors.greenAccent,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: screenWidth * 0.5,
                child: Column(
                  children: [
                    Container(
                      height: finalHeight * 0.2,
                      margin: const EdgeInsets.all(8),
                      color: Colors.redAccent,
                    ),
                    Container(
                      height: finalHeight * 0.2,
                      margin: const EdgeInsets.all(8),
                      color: Colors.redAccent,
                    ),
                    Container(
                      height: finalHeight * 0.2,
                      margin: const EdgeInsets.all(8),
                      color: Colors.redAccent,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screenWidth * 0.5,
                child: Column(
                  children: [
                    Container(
                      height: finalHeight * 0.2,
                      margin: const EdgeInsets.all(8),
                      color: Colors.redAccent,
                    ),
                    Container(
                      height: finalHeight * 0.2,
                      margin: const EdgeInsets.all(8),
                      color: Colors.redAccent,
                    ),
                    Container(
                      height: finalHeight * 0.2,
                      margin: const EdgeInsets.all(8),
                      color: Colors.redAccent,
                    ),
                  ],
                ),
              ),
            ],
          ))
    ]);
  }
}

class TextScaling extends StatelessWidget {
  const TextScaling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Scaling'),
      ),
      body: Center(
          child: Text(
        'Contoh Text',
        // style: TextStyle(
        //   fontSize: 20 * context.media.textScaleFactor,
        // ),
        textScaleFactor: context.media.textScaleFactor.clamp(1.0, 2.5),
      )),
    );
  }
}
// class BuildingLayout extends StatelessWidget {
//   const BuildingLayout({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Building Layout with layoutBuilder'),
//       ),
//       body: LayoutBuilder(
//         builder: (BuildContext context, BoxConstraints constraints) {
//           if (constraints.maxHeight <= 100 ) {

//           } else {
//           }
//           return ;
//         },
//       ),
//     );
//   }
// }

class ViewInsetsPadding extends StatelessWidget {
  const ViewInsetsPadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return BottomSheetView();
                },
              );
            },
            child: Text('show bottomsheet')),
      ),
    );
  }
}

class BottomSheetView extends StatelessWidget {
  const BottomSheetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final paddingBottom = mediaQuery.viewInsets;

    return FractionallySizedBox(
      heightFactor: 0.5,
      child: Container(
        padding: EdgeInsets.only(
            bottom: paddingBottom.bottom + 16, top: 16, left: 16, right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
                // autofocus: true,
                ),
            TextField(
                // autofocus: true,
                ),
          ],
        ),
      ),
    );
  }
}
