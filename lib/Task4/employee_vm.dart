import 'package:flutter/material.dart';
import 'package:flutter_training/Task4/model/emp_model.dart';
import 'package:stacked/stacked.dart';

class EmployVM extends BaseViewModel {
  List<Employee> items = [
    Employee(
      'assets/DSC_0030.JPG',
      BioData('Ali', 'Ali Hassan', 'Hollywood', 'Pakistan'),
      [
        SocialData(Icons.facebook, 'facebook.com/AliHassan'),
        SocialData(Icons.email_rounded, 'ahcheema12@gmail.com'),
      ],
    ),
    Employee(
      'assets/actor2.jpg',
      BioData('Kashif', 'Kashif Mehmood', 'Hollywood', 'Pakistan'),
      [SocialData(Icons.facebook, 'facebook.com/M Kashif')],
    ),
    Employee(
      'assets/Actor3.jpg',
      BioData('Usama', 'Usama Ali', 'Hollywood', 'Pakistan'),
      [SocialData(Icons.facebook, 'facebook.com/UsamaAli')],
    ),
    Employee(
      'assets/Actor4.jpg',
      BioData('Salman', 'Salman Khan', 'Hollywood', 'Pakistan'),
      [SocialData(Icons.email, 'salmankhan@gmail.com')],
    ),
    Employee(
      'assets/Actor5.jpg',
      BioData('Zeeshan', 'Zeeshan Ali', 'Hollywood', 'Spain'),
      [SocialData(Icons.email_rounded, 'ZeeshanAli@gmail.com')],
    ),
    Employee(
      'assets/Actor6.jpg',
      BioData('Nisar', 'Nisar Khan', 'Hollywood', 'Italy'),
      [SocialData(Icons.email_rounded, 'Nisar@gmail.com')],
    ),
    Employee(
      'assets/actor7.jpg',
      BioData('Farid', 'Farid Ullah', 'Hollywood', 'US'),
      [SocialData(Icons.email_rounded, 'Farid@gmail.com')],
    ),
    Employee(
      'assets/actor8.jpg',
      BioData('Sufyan', 'Sufyan Ali', 'Hollywood', 'UK'),
      [SocialData(Icons.email_rounded, 'Sufyan@gmail.com')],
    ),
  ];
  onItemClick(BuildContext context, String path, int index) {
    Navigator.pushNamed(context, path, arguments: items[index]);
  }
}
