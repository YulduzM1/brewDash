import 'package:brew_dash_app/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
  MyCurrentLocation({super.key});


  final textController = TextEditingController();
  
  void openLocationSearchBox(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.background,
      title: const Text("Your location"),
      content: const TextField(
        decoration: InputDecoration(hintText: "Enter address..."),
      ), 
      actions: [
        // cancel button
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
            textController.clear();
          },
          child: const Text('Cancel'),
        ), 
        // save button
        MaterialButton(
          onPressed: () {
            String newAddress = textController.text;
            context.read<Restaurant>().updateDELIVERYADDRESS(newAddress);
            Navigator.pop(context);
            textController.clear();
          },
          child: const Text('Save'),
        ), 
      ],
    ), 
  );
}

 @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ), // Text
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Consumer<Restaurant>(
                  builder: (context, restaurant, child) => Text(
                    restaurant.deliveryAddress,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ],
            ), 
          ), 
        ],
      ), 
    ); 
  }
}
