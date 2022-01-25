import 'package:flutter/material.dart';
import 'package:portfolio_app/pages/contact_page.dart';
import 'package:portfolio_app/pages/projects_page.dart';
import 'package:portfolio_app/widgets/Drawer_Widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeef2ff),
      appBar: AppBar(title: const Text('Romaine Halstead')),
      drawer: DrawerWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Freelance Web Developer and Mobile App Developer',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactPage()));
              },
              child: const Text('Lets Get To Work'),
            )
          ],
        ),
      ),
    );
  }
}

