import 'package:brew_dash_app/components/my_current_location.dart';
import 'package:brew_dash_app/components/my_description_box.dart';
import 'package:brew_dash_app/components/my_drawer.dart';
import 'package:flutter/material.dart';

import '../components/my_sliver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const MySliverAppBar(
            title: Text('Title'),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //my current location
                MyCurrentLocation(),
                //description
                MyDescriptionBox(),

              ],
            ),
          ), 
        ],
        body: Container(color: Colors.blue),
      ),
    ); 
  }
}
