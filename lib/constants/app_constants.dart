import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widget_barrel.dart';

const Color BANNER_BG_COLOR = Color(0xFF154879);
const String BANNER_PERSON_NAME = 'MenilKumar R.';
const String TITLE_PERSON_NAME = 'MenilKumar';

const String PORTFOLIO_IMG = 'assets/portfolio_img.jpg';
const List<String> DESIGNATIONS = [
  'Android Developer.',
  'Flutter Developer.',
];

const String ABOUT_ME_DESC =
    'Passionately curious developer with 1.5+ years of extensive experience in building, integrating, testing and supporting cutting edge mobile applications';

const String DOWNLOAD_CV_URL =
    'https://drive.google.com/file/d/1TM71He-b_btWKGxmVZLr_voKyLLsxqGK/view?usp=sharing';

const List<String> ABOUT_ME_LABELS = [
  'Name:',
  'Date of Birth:',
  'Address:',
  'Zip code:',
  'Email:',
  'Phone:',
];

const List<String> ABOUT_ME_VALUES = [
  'MenilKumar Radadiya',
  'November 29, 1999',
  'Surat , Gujarat',
  '394105',
  'rma4005@gmail.com',
];

const PROJECT_COMPLETE_COUNT = '08+';

TextStyle kAboutMeValuesStyle =
    TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey);

TextStyle kAboutMeLabelsTextStyle =
    TextStyle(fontSize: 16, fontWeight: FontWeight.w600);

const List<String> kSkillsAssets = [
  'assets/microsoft.png',
  'assets/android.png',
  'assets/java.png',
  'assets/google.png',
  'assets/flutter.png',
  'assets/medium.png',
];

const List<ResumeModel> kEducation = [
  ResumeModel(
      period: '2018-2021',
      title: 'Bachelor of engineering in computer science',
      place: 'Mahavir Swami College of Engineering and Technology (GTU) - 8.66 CGPA',
      description: ''),
  ResumeModel(
      period: '2015-2018',
      title: 'Diploma in computer engineering',
      place: 'Shree Dhanvantary College of Diploma Engineering (GTU) - 8.46 CGPA',
      description: ''),
  ResumeModel(
      period: '2014-2015',
      title: '10th standard',
      place: 'Samarpan techno school (SSC) – 86 %',
      description: ''),
];

const List<ResumeModel> kExperience = [
  ResumeModel(
      period: 'FEB 2020 - Present',
      title: 'Android / Flutter  Developer',
      place: 'Anques Technolab',
      description:
          'Joined a android developer worked on wide range of applications which gave me opportunities in leaning new technologies. then worked as a Flutter developer which is a great experience i ever had.'),
];

List<ContactMeModel> kContactMe = [
  ContactMeModel(
      title: 'Email Address',
      userName: 'rma4005@gmail.com',
      icon: Icons.mail_rounded,
      onClick: () async {
        await launch(
            'https://mail.google.com/mail/?view=cm&fs=1&to=rma4005@gmail.com&su=&body=');
      }),
  ContactMeModel(
      title: 'LinkedIn',
      userName: 'menilradadiya',
      icon: Icons.face,
      onClick: () async {
        await launch('https://www.linkedin.com/in/menilkumar-r-4b8008167/');
      }),
  ContactMeModel(
      title: 'Facebook',
      userName: 'menilradadiya',
      icon: Icons.facebook,
      onClick: () async {
        await launch('https://www.facebook.com/menilradadiya/');
      }),
  ContactMeModel(
      title: 'Github',
      userName: 'menilradadiya',
      icon: Icons.face,
      onClick: () async {
        await launch('https://github.com/menilradadiya');
      }),
  ContactMeModel(
      title: 'Medium',
      userName: 'menilradadiya',
      icon: Icons.face,
      onClick: () async {
        await launch('https://menilradadiya.medium.com/');
      }),
  ContactMeModel(
      title: 'Stack Overflow',
      userName: 'menil-radadiya',
      icon: Icons.face,
      onClick: () async {
        await launch('https://stackoverflow.com/users/15931902/menil-radadiya');
      }),
];

List<SkillsModel> kSkills = [
  SkillsModel('Core Java', 98),
  SkillsModel('Native Android', 90),
  SkillsModel('Flutter', 90),
  SkillsModel('Material design', 90),
  SkillsModel('Firebase', 80),
  SkillsModel('Kotlin', 50),
];

List<SkillsModel> kLanguage = [
  SkillsModel('Gujarati', 90),
  SkillsModel('Hindi', 70),
  SkillsModel('English', 65),
];

class ResumeModel {
  final String period;
  final String title;
  final String place;
  final String description;

  const ResumeModel(
      {required this.period,
      required this.title,
      required this.place,
      required this.description});
}

class ContactMeModel {
  final String title;
  final String userName;
  final IconData icon;
  final Function onClick;

  const ContactMeModel(
      {required this.title,
      required this.userName,
      required this.icon,
      required this.onClick});
}

class SkillsModel {
  final String name;
  final int percentage;

  SkillsModel(this.name, this.percentage)
      : assert(percentage <= 100, "Skill percentage must be less than 100 ");
}
