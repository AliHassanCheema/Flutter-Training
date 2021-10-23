import 'package:flutter/material.dart';
import 'package:flutter_training/Task4/model/emp_model.dart';
import 'package:stacked/stacked.dart';

class EmployeeDetailVM extends BaseViewModel {
  Employee getData(context) {
    return ModalRoute.of(context)!.settings.arguments as Employee;
  }
}
