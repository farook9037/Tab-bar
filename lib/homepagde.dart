import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Tab Bar Example'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car), text: "Car"),
              Tab(icon: Icon(Icons.directions_transit), text: "Transit"),
              Tab(icon: Icon(Icons.directions_bike), text: "Bike")
            ],
            indicatorColor: Colors.red,
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("car Tab")),
            Center(child: Text("Transit Tab")),
            Center(child: Text("Bike Tab")),
          ],
        ),
      ),
    );
  }
}
