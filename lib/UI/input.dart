import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final double                      width;
  final double                      height;
  final TextEditingController       controller;
  final Color                       backgroundColor;

  Input({
    this.width,
    this.height                     = 50,
    this.controller,
    this.backgroundColor            = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: MediaQuery.of(context).size.width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: new TextField(
        controller: controller,
      ),
    );
  }
}