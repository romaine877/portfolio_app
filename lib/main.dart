import 'package:flutter/material.dart';
import 'package:portfolio_app/pages/contact_page.dart';
import 'package:portfolio_app/pages/projects_page.dart';
import 'package:portfolio_app/providers/project_list.dart';
import 'package:provider/provider.dart';
import 'pages/home_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        
        ChangeNotifierProvider(
          create: (context) => ProjectList(),
        ),
      ],
      child: const MyApp(),
    ),
    
    );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Romaine Halstead Portfolio App',
      theme: ThemeData(
       primarySwatch: Colors.indigo,
       scaffoldBackgroundColor: const Color(0xffeef2ff)
       
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/projects': (context) => const ProjectsPage(),
        '/contact': (context) => const ContactPage(),
      },
     
      debugShowCheckedModeBanner: false,
    );
  }
}


