class ProjectUtils {
  final String image;
  final String title;
  final String subTitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;
  final String? githubLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subTitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
    this.githubLink,
  });
}

//perdonal Projects
List<ProjectUtils> personalProjects = [
  ProjectUtils(
    image: 'assets/projects/1.jpg',
    title: 'AF Store',
    subTitle:
        'This is a E-commerce App for online shopping featuring various famous Brands.',
    androidLink: null,
    iosLink: null,
    githubLink: 'https://github.com/SoulStorm781/E_Commerce_Mobile_App.git',
  ),
  ProjectUtils(
    image: 'assets/projects/2.png',
    title: 'AF News',
    subTitle:
        'This is a News App that provides the latest news from around the world.',
    androidLink: null,
    iosLink: null,
    githubLink: 'https://github.com/SoulStorm781/AF_News_App.git',
  ),
  ProjectUtils(
    image: 'assets/projects/3.png',
    title: 'AF Weather Forecast',
    subTitle:
        'This is a Weather App that provides the latest weather updates for any City.',
    androidLink: '',
    iosLink: '',
  ),
];
