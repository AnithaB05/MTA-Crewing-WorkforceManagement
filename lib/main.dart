import 'package:flutter/material.dart';
import 'package:wfm_app/navbar.dart';
import 'dart:math';
import 'dart:ui';
import 'common.dart';
import 'home_page.dart';

void main() {
  runApp(const MainApp());
}

var bottomNavigatorKey = GlobalKey<State<StatefulWidget>>();
final scaffoldKey = GlobalKey<ScaffoldState>();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
            PointerDeviceKind.stylus,
            PointerDeviceKind.unknown
          },
        ),
        builder: (context, child) {
          final MediaQueryData data = MediaQuery.of(context);
          return MediaQuery(
            data: data.copyWith(textScaleFactor: 1.0),
            child: child!,
          );
        },
        home: const RootPage(), // SafeArea(child: Scaffold()),
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: const Color(0xff6750a4),
          //colorSchemeSeed: Colors.deepPurple
        ));
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [HomePage()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: const NavBar(),
        body: pages[currentPage], //const HomePage(),
        appBar: AppBar(
          title: const Text('Kezava Insights Welcome !!',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
          shadowColor: Theme.of(context).colorScheme.shadow,
          elevation: 3.0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                webtoFlutter('#aea4e3'), // WebToFlutterColor('dsd'),
                webtoFlutter('#efefef')
              ], transform: const GradientRotation(45 * pi / 180)),
            ),
          ),
        ),
        bottomNavigationBar: NavigationBar(
          key: bottomNavigatorKey,
          indicatorColor: webtoFlutter('#e3d7f7'),
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.camera),
                selectedIcon: Icon(
                  Icons.camera,
                  color: Color.fromARGB(
                      255, 93, 32, 168), //Color.fromARGB(255, 98, 62, 143)
                ),
                label: 'MY JOBS'), // 'OVERVIEW'),
            NavigationDestination(
                icon: Icon(Icons.calendar_month_outlined),
                selectedIcon: Icon(
                  Icons.calendar_month_outlined,
                  color: Color.fromARGB(
                      255, 93, 32, 168), //Color.fromARGB(255, 98, 62, 143)
                ),
                label: 'LEAVE')
          ],
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          onDestinationSelected: (int index) {
            setState(
              () {
                currentPage = index;
              },
            );
          },
          selectedIndex: currentPage,
        ),
      ),
    );
  }
}
