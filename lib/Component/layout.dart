import 'package:flutter/material.dart';
import 'package:flutter_clock/color_const.dart' as color_const;

class Layout extends StatelessWidget {
  final Widget? child;
  const Layout({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [color_const.background, color_const.primaryVariant],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight),
        ),
        child: SafeArea(
            child: Container(
          child: child,
        )),
      ),
    );
  }
}
