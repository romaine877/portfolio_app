import 'package:flutter/material.dart';
import 'package:portfolio_app/providers/project_list.dart';
import 'package:portfolio_app/widgets/Drawer_Widget.dart';
import 'package:provider/provider.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({ Key? key }) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override

  void initState() {
    Provider.of<ProjectList>(context, listen: false).fetchProjects();
    super.initState();
  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeef2ff),
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      drawer: DrawerWidget(),
      body: SafeArea(
        child: Consumer<ProjectList>(
          builder: (context, projectList, _) =>
           ListView.builder(
                    itemCount: projectList.projects.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        child: ListTile(
                          title: Text(projectList.projects[index].title),
                          subtitle: Text(projectList.projects[index].description),
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              '/project',
                              arguments: projectList.projects[index],
                            );
                          },
                        ),
                      );
                    },
                  )
        )
        ),
      );
    
  }
}