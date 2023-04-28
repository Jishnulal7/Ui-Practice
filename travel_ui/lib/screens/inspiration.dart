import 'package:flutter/material.dart';

class InspirationUi extends StatelessWidget {
  const InspirationUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
          child: Column(
        children: const <Widget>[
          
        ],
      )),
    );
  }
}
