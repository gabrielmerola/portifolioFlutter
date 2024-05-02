class ProjectUtils {
  final String image;
  final String title;
  final String description;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;
  final String? githubLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.description,
    this.androidLink,
    this.iosLink,
    this.webLink,
    this.githubLink,
  });
}

// COLLEGE PROJECTS
List<ProjectUtils> collegeProjectUtils = [
  ProjectUtils(
    image: "",
    title: "Quiz Python",
    description: "",
    githubLink: "https://github.com/TechIMTGroup/TechQuizMaua",
  ),
  ProjectUtils(
    image: "",
    title: "Leilão APAE SCS",
    description: "",
    githubLink: "https://github.com/FelipeCarillo/apaeleilao_frontend",
  ),
  ProjectUtils(
    image: "",
    title: "Aplicativo São Camilo",
    description: "",
    githubLink: "https://github.com/gabrielmerola/YE_GestaoDeSaude_Backend",
  ),
];

// WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: "assets/projects/ondesanca.png",
    title: "OndeSanca",
    description: "Site e aplicativo de comercio local de SCS",
    webLink: "https://www.ondesanca.com.br",
    androidLink:
        "https://play.google.com/store/apps/details?id=br.com.merola.ondesanca",
    iosLink: "",
  ),
  ProjectUtils(
    image: "assets/projects/grupojsc.png",
    title: "Grupo JSC Consultoria",
    description: "Site de consultoria criminal para RH",
    webLink: "https://www.grupojsc.com.br",
  ),
];
