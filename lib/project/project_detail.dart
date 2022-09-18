import 'package:flutter/material.dart';
import 'package:portofolio_1/example/projects.dart';
import 'package:portofolio_1/responsive.dart';

class ProjectDetail extends StatelessWidget {
  final Project project;
  const ProjectDetail({required this.project, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BackButton(
                        onPressed: () => Navigator.pop(context),
                      ),
                      Text(
                        project.name,
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: const EdgeInsets.all(5.0),
                        child: Text(project.year.toString(),
                            style: const TextStyle(
                                fontSize: 14, color: Colors.white)),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                  Responsive(
                      mobile: Image.network(
                        project.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      tablet: Image.network(
                        project.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      desktop: SizedBox(
                        height: 350,
                        child: Image.network(
                          project.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Technologies",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  HorizontalTechView(
                    techList: project.technologiesUsed ?? [],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Description",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    project.description,
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HorizontalTechView extends StatelessWidget {
  final List<String> techList;
  const HorizontalTechView({required this.techList, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: techList.length,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(right: 15.0, left: 15.0),
            margin: const EdgeInsets.only(right: 15.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white),
            child: Text(
              techList[index],
              style: const TextStyle(color: Colors.black),
            ),
          );
        },
      ),
    );
  }
}
