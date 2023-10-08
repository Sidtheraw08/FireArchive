import 'package:flutter/material.dart'; 
import 'package:fire_archive/components/helpline.dart'; // This imports the helpline.dart file.
import 'package:fire_archive/components/safety_index.dart'; // This imports the safety_index.dart file.
import 'package:fire_archive/components/safety_std.dart';

class NavBar extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20); // Sets the padding for the navigation bar.

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.grey[200],
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ]),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/drawerheader.jpg"), 
                          fit: BoxFit.cover),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.7),
                          Colors.transparent
                        ],
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "Dashboard",
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Safety Index',
                    icon: Icons.add_chart_outlined,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 24),
                  const Divider(
                    color: Colors.grey,
                    indent: 10,
                    endIndent: 20,
                  ),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Safety Standards',
                    icon: Icons.security_rounded,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 24),
                  const Divider(
                    color: Colors.grey,
                    indent: 10,
                    endIndent: 20,
                  ),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Helpline Numbers',
                    icon: Icons.phone,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 24),
                  const Divider(
                    color: Colors.grey,
                    indent: 10,
                    endIndent: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const color = Colors.black;
    const hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: const TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {  
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AirQualityTable(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ServicesPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => safety_std(),
        ));
        break;
    }
  }
}
