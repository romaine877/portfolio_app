import 'package:flutter/material.dart';
import 'package:portfolio_app/pages/contact_page.dart';
import 'package:portfolio_app/pages/home_page.dart';
import 'package:portfolio_app/pages/projects_page.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              Text('Romaine Halstead', style: TextStyle(fontSize: 30)),
              SizedBox(height: 10),
              Text('Full Stack Developer'),
            ],
          ),
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Home'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyHomePage()));
          },
        ),
        ListTile(
          leading: const Icon(Icons.umbrella),
          title: const Text('Projects'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProjectsPage()));
          },
        ),
        ListTile(
          leading: const Icon(Icons.contact_mail),
          title: const Text('Contact'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ContactPage()));
          },
        ),
      ],
    ));
  }
}
