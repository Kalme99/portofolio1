// import 'package:';
class Project {
  String name;
  int year;
  String description;
  String imageUrl;
  List<String>? technologiesUsed;

  Project({
    required this.name,
    required this.year,
    required this.description,
    required this.imageUrl,
    this.technologiesUsed,
  });
}

List<Project> projects = [
  Project(
      name: "Flutter Finance",
      technologiesUsed: ["Flutter", "AWS", "Git"],
      year: 2018,
      description:
          "Worked on creating a dashboard with Flutter that displayed SaaS metrics such as LTV, MMR and Churn Rates.",
      imageUrl:
          "https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"),
  Project(
      name: "Delivery App",
      technologiesUsed: ["Flutter", "Firebase"],
      year: 2019,
      description: "This is my description 1",
      imageUrl:
          "https://images.unsplash.com/photo-1531403009284-440f080d1e12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"),
  Project(
      name: "3D modelling",
      technologiesUsed: ["Pro Create", "Flutter", "Firebase"],
      year: 2020,
      description: "This is my description 1",
      imageUrl:
          "https://images.unsplash.com/photo-1596496050827-8299e0220de1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"),
  Project(
      name: "Android/Web Application",
      technologiesUsed: ["Android Studio", "Next.js", "OAuth"],
      year: 2021,
      description: "This is my description 1",
      imageUrl:
          "https://images.unsplash.com/photo-1555774698-0b77e0d5fac6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"),
];
