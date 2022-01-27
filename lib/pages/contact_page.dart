import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/Drawer_Widget.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      drawer: const DrawerWidget(),
      body: const Center(
        child: Text('Contact'),
      ),
    );
  }
}