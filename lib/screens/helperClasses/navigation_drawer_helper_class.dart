import 'package:flutter/material.dart';


class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          buildMenuItem(
            text: "Contact",
            icon: Icons.contact_mail,
            context: context,
            index: 0,
          ),
          SizedBox(height: 20),
          buildMenuItem(
            text: "Coffee? 🤔",
            icon: Icons.coffee_maker,
            context: context,
            index: 1,
          ),
          SizedBox(height: 20),
          buildMenuItem(
            text: "Privacy Policy",
            icon: Icons.security,
            context: context,
            index: 2,
          ),
          SizedBox(height: 20),
          buildMenuItem(
            text: "About",
            icon: Icons.info_outline,
            context: context,
            index: 3,
          ),
        ],
      ),
    );
  }
}

Widget buildMenuItem(
    {required String text,
    required IconData icon,
    required BuildContext context,
    required int index}) {
  return ListTile(
    title: Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    leading: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Icon(icon, size: 25),
    ),
    onTap: (() {
      Navigator.of(context).pop();
      switch (index) {
        case 0:
          Navigator.of(context).pushNamed("/Contact");
          break;
        case 1:
          Navigator.of(context).pushNamed("/Coffee");
          break;
        case 2:
          Navigator.of(context).pushNamed("/Privacy Policy");
          break;
        case 3:
          Navigator.of(context).pushNamed("/About Us");
          break;
      }
    }),
  );
}
