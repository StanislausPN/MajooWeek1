import 'package:flutter/material.dart';
import 'package:majoo_botcamp/first_task/landscape_view/landscape_view.dart';
import 'package:majoo_botcamp/first_task/potrait_view/portrait_view.dart';

class FirstTask extends StatelessWidget {
  const FirstTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFFABC7FF),
          child: const Icon(
            Icons.grid_view_rounded,
            color: Colors.black,
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth >= 480) {
              return const LandscapeView();
            } else {
              return const PotraitView();
            }
          },
        ));
  }
}
