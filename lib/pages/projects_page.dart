import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/Drawer_Widget.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeef2ff),
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      drawer: DrawerWidget(),
      body: const Center(
        child: Text('Projects'),
      ),
    );
    
  }
}