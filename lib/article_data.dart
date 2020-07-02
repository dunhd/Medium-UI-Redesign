import 'package:medium_app/articles.dart';

class ArticleData {
  List<Articles> dailyRead = [
    Articles(
      articleTitle: 'Big Data for Startups',
      articleAuthor: 'Mark Jones',
      articlePub: 'Towards Data Science',
      articleUrl: 'assets/images/Big_data_for_startups.jpeg',
      articlePubUrl: 'assets/images/towards_DS.png',
    ),
    Articles(
        articleTitle: 'Setup Deign',
        articleAuthor: 'Joyce Cole',
        articlePub: 'SuperJump',
        articleUrl: 'assets/images/Setup_design.jpeg',
        articlePubUrl: 'assets/images/superjump.png'),
    Articles(
      articleTitle: 'Ethical Hacking',
      articleAuthor: 'Peter Doe',
      articlePub: 'Towards Data Science',
      articleUrl: 'assets/images/Ethical_hacking.jpeg',
      articlePubUrl: 'assets/images/towards_DS.png',
    ),
    Articles(
      articleTitle: 'VR vs AR',
      articleAuthor: 'Susan Wong',
      articlePub: 'SuperJump',
      articleUrl: 'assets/images/VR_vs_AR.jpeg',
      articlePubUrl: 'assets/images/superjump.png',
    ),
    Articles(
      articleTitle: 'Digital Normad',
      articleAuthor: 'John Murphy',
      articlePub: 'Mind Cafe',
      articleUrl: 'assets/images/digital_normad.jpeg',
      articlePubUrl: 'assets/images/mind_cafe.jpg',
    ),
  ];

  List<Articles> fromNetwork = [
    Articles(
      articleTitle: 'Cloud Computing',
      articleAuthor: 'Susan Wong',
      articlePub: 'Towards Data Science',
      articleUrl: 'assets/images/cloud_computing.jpeg',
      articlePubUrl: 'assets/images/towards_DS.png',
    ),
    Articles(
      articleTitle: 'Freelancing',
      articleAuthor: 'Mark Jones',
      articlePub: 'Mind Cafe',
      articleUrl: 'assets/images/Freelance_app_dev.jpeg',
      articlePubUrl: 'assets/images/mind_cafe.jpg',
    ),
    Articles(
      articleTitle: 'ML Laptops',
      articleAuthor: 'John Murphy',
      articlePub: 'Towards Data Science',
      articleUrl: 'assets/images/Setup_design.jpeg',
      articlePubUrl: 'assets/images/towards_DS.png',
    ),
    Articles(
      articleTitle: 'Sole Entreprenuership',
      articleAuthor: 'Ben Stephens',
      articlePub: 'Mind Cafe',
      articleUrl: 'assets/images/sole_entreprenuership.jpeg',
      articlePubUrl: 'assets/images/mind_cafe.jpg',
    ),
    Articles(
      articleTitle: 'Blogging',
      articleAuthor: 'Edith Smith',
      articlePub: 'Mind Cafe',
      articleUrl: 'assets/images/blogging.jpeg',
      articlePubUrl: 'assets/images/mind_cafe.jpg',
    ),
    Articles(
      articleTitle: 'Learning A.I',
      articleAuthor: 'Peter Doe',
      articlePub: 'Towards Data Science',
      articleUrl: 'assets/images/learning_ai.jpeg',
      articlePubUrl: 'assets/images/towards_DS.png',
    ),
    Articles(
      articleTitle: 'Intro to Programming',
      articleAuthor: 'Angela Smart',
      articlePub: 'Towards Data Science',
      articleUrl: 'assets/images/intro_to_programming.jpeg',
      articlePubUrl: 'assets/images/towards_DS.png',
    ),
  ];

  List<Articles> fromReading = [
    Articles(
      articleTitle: 'Intro to Flutter Widgets',
      articleAuthor: 'Angela Smart',
      articlePub: 'Flutter Community',
      articlePubUrl: 'assets/images/flutter_pub.png',
      articleUrl: 'assets/images/flutter_logo.jpg',
    )
  ];

  List<Articles> readingHistory = [
    Articles(
      articleTitle: 'Digital Normad',
      articleAuthor: 'John Murphy',
      articlePub: 'Mind Cafe',
      articleUrl: 'assets/images/digital_normad.jpeg',
      articlePubUrl: 'assets/images/mind_cafe.jpg',
      articleDate: '30/4/2020',
      articleTime: '5 MIn read',
    ),
    Articles(
      articleTitle: 'Trading with ML',
      articleAuthor: 'John Murphy',
      articlePub: 'Mind Cafe',
      articleUrl: 'assets/images/trade_with_ML.jpeg',
      articlePubUrl: 'assets/images/towards_DS.png',
      articleDate: '08/5/2020',
      articleTime: '12 Min read',
    ),
    Articles(
      articleTitle: 'Cloud Computing',
      articleAuthor: 'Susan Wong',
      articlePub: 'Towards Data Science',
      articleUrl: 'assets/images/cloud_computing.jpeg',
      articlePubUrl: 'assets/images/towards_DS.png',
      articleDate: '08/5/2020',
      articleTime: '12 Min read',
    ),
    Articles(
      articleTitle: 'Freelancing',
      articleAuthor: 'Mark Jones',
      articlePub: 'Mind Cafe',
      articleUrl: 'assets/images/Freelance_app_dev.jpeg',
      articlePubUrl: 'assets/images/mind_cafe.jpg',
      articleDate: '15/3/2020',
      articleTime: '10 Min read',
    ),
    Articles(
      articleTitle: 'State Management',
      articleAuthor: 'Edith Smith',
      articlePub: 'Flutter Community',
      articlePubUrl: 'assets/images/flutter_pub.png',
      articleUrl: 'assets/images/flutter_logo.jpg',
      articleDate: '15/3/2020',
      articleTime: '10 Min read',
    ),
    Articles(
      articleTitle: 'Learning A.I',
      articleAuthor: 'Peter Doe',
      articlePub: 'Towards Data Science',
      articleUrl: 'assets/images/learning_ai.jpeg',
      articlePubUrl: 'assets/images/towards_DS.png',
      articleDate: '20/4/2020',
      articleTime: '7 Min read',
    ),
  ];
}
