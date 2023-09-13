import "package:flutter/material.dart";

import "common.dart";

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        ListTile(
          leading: Icon(Icons.info, color: webtoFlutter('#8a80c4')),
          title: const Text('About'),
          //   textColor: Color.fromARGB(255, 112, 47, 203),
          onTap: () => {
            showAboutDialog(
                context: context,
                applicationName: 'Kezava',
                applicationIcon: Image.asset(
                    width: 50,
                    height: 50,
                    'assets/icons/iconcrop.png'), //const FlutterLogo(),
                applicationVersion: '1.0.22',
                children: [
                  const Text('Kezava Platform Mobile App'),
                ])
          },
        ),
      ],
    ));
  }
}
