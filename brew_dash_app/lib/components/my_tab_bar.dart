import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;


  const MyTabBar({
    super.key,
    required this.tabController,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: [
          Tab(
            icon: Icon(Icons.home),
          ), 

          //2md Tab
          Tab(
            icon: Icon(Icons.settings),
          ),
                    //2md Tab
          Tab(
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}