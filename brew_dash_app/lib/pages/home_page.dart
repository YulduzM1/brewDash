import 'package:flutter/material.dart';
import 'package:brew_dash_app/components/my_current_location.dart';
import 'package:brew_dash_app/components/my_description_box.dart';
import 'package:brew_dash_app/components/my_drawer.dart';
import 'package:brew_dash_app/components/my_tab_bar.dart';
import '../components/my_sliver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  // tab Controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                
                // switch
                MyCurrentLocation(),

                //description
                const MyDescriptionBox(),
              ],
            ),
          ), 
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("first tab items"),
              ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("second tab items"),
              ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("third tab items"),
              ),
          ],
        ),
      ),
    ); 
  }
}
