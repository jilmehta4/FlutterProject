import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(child:
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Name : "),

            ]
        ),

      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

}
