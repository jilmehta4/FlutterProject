import 'package:flutter/material.dart';
import 'package:group_project_2/components/form.dart';
import './components/button.dart';

class CartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(child:
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Payment method"),
              MyStatefulWidget(),
              MyStateWidget()

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
            "Checkout",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

}
