import 'package:flutter/material.dart';
import 'package:temperature/screens/CuartoTab.dart';
import 'package:temperature/screens/PrimerTab.dart';
import 'package:temperature/screens/QuintoTab.dart';
import 'package:temperature/screens/SegundoTab.dart';
import 'package:temperature/screens/SextoTab.dart';
import 'package:temperature/screens/TercerTab.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final TabController = DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("App de Grados"),
          bottom: const TabBar(
            indicatorColor: Colors.red,
            tabs: <Widget>[
              Tab(text: "C - F"),
              Tab(text: "C - K"),
              Tab(text: "F - C"),
              Tab(text: "F - K"),
              Tab(text: "K - C"),
              Tab(text: "K - F"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            PrimerTab(),
            SegundoTab(),
            TercerTab(),
            CuartoTab(),
            QuintoTab(),
            SextoTab(),
          ],
        ),
      ),
    );

    return MaterialApp(
      title: 'Tabs en flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabController,
    );
  }
}
