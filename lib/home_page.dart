import 'package:flutter/material.dart';
import 'home_header.dart';
import 'home_jobs.dart';
import 'home_extrajobs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: <Widget>[
          HomeHeader(),
          Divider(height: 1.0),
          JobDetails(),
          Divider(height: 1.0),
          ExtraJobAssignment()
        ]));
  }
}
