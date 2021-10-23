import 'package:flutter/material.dart';
import 'package:flutter_training/Task4/employee_detail_vm.dart';
import 'package:flutter_training/Task4/lib/bio_widget.dart';
import 'package:flutter_training/Task4/lib/profile_widget.dart';
import 'package:flutter_training/Task4/lib/social_widget.dart';
import 'package:stacked/stacked.dart';

class EmloyeeDetailScreen extends ViewModelBuilderWidget<EmployeeDetailVM> {
  const EmloyeeDetailScreen({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, EmployeeDetailVM viewModel, Widget? child) {
    final item = viewModel.getData(context);
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text("${item.bio.nickName}'s ID Card"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfilePic(image: item.image),
            const Divider(
              color: Colors.white,
            ),
            const Bio(text: 'Name', isHeading: true),
            Bio(text: item.bio.name, isHeading: false),
            const Bio(text: 'Industry', isHeading: true),
            Bio(text: item.bio.industry, isHeading: false),
            const Bio(text: 'Country', isHeading: true),
            Bio(text: item.bio.country, isHeading: false),
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Social(
                      myIcon: item.social[index].icon,
                      title: item.social[index].title);
                },
                itemCount: item.social.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  EmployeeDetailVM viewModelBuilder(BuildContext context) {
    return EmployeeDetailVM();
  }
}
