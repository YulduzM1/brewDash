import 'dart:js_interop';

import 'package:brew_dash_app/components/my_receipt.dart';
import 'package:flutter/material.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery in progress..."),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          MyReceipt(),
        ],)
    );
  }
}
