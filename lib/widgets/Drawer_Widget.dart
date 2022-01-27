import 'package:flutter/material.dart';
import 'package:portfolio_app/pages/contact_page.dart';
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
            ModalRoute.of(context)?.settings.name == '/'
                ? Navigator.pop(context)
                : Navigator.pushNamed(context, '/');
                      
          },
        ),
        ListTile(
          leading: const Icon(Icons.umbrella),
          title: const Text('Projects'),
          onTap: () {
            ModalRoute.of(context)?.settings.name == '/projects'
                ? Navigator.pop(context)
                : Navigator.pushNamed(context, '/projects');
                      },
        ),
        ListTile(
          leading: const Icon(Icons.contact_mail),
          title: const Text('Contact'),
          onTap: () {
            ModalRoute.of(context)?.settings.name == 'contact'
                ? Navigator.pop(context)
                : Navigator.pushNamed(context, '/contact');

          },
        ),
      ],
    ));
  }
}
