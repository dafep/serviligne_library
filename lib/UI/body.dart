import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Widget body;
  final Widget header;
  final Widget footer;

  Body({
    this.body,
    this.header,
    this.footer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header,
      body: body,
      bottomNavigationBar: footer,
    );
  }
}