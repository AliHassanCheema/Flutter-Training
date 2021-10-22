import 'package:flutter/material.dart';
import 'package:flutter_training/Task4/employee_vm.dart';
import 'package:stacked/stacked.dart';

class EmployessData extends ViewModelBuilderWidget<EmployVM> {
  const EmployessData({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, EmployVM viewModel, Widget? child) {
    return Scaffold();
  }

  @override
  EmployVM viewModelBuilder(BuildContext context) {
    return EmployVM();
  }
}
