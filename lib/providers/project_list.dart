import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:portfolio_app/key.dart';
import 'package:portfolio_app/models/Project.dart';
import 'package:http/http.dart' as http;

final url = Uri.parse(apiKey);

class ProjectList extends ChangeNotifier {
  List<Project> _projects = [];

  List<Project> get projects => _projects;

  Future<void> fetchProjects() async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final responseData = json.decode(response.body) as Map<String, dynamic>;
      final List<Project> loadedProjects = [];
     
     
      responseData['projects'].forEach((project) {
        loadedProjects.add(Project(
          id: project['id'],
          title: project['name'],
          description: project['description'],
          image: project['image'],
          link: project['link'],
         
        ));
      });
      _projects = loadedProjects;
      print(_projects);
    }
  }

  notifyListeners();
}
