import 'package:flutter/material.dart';
import 'package:flutter_training/Task4/employee_vm.dart';
import 'package:stacked/stacked.dart';

class EmployeesScreen extends ViewModelBuilderWidget<EmployVM> {
  const EmployeesScreen({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, EmployVM viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text(
          "Employees",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              color: Colors.blue[500],
              child: InkWell(
                onTap: () {
                  viewModel.onItemClick(context, index);
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          viewModel.items[index].image,
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          viewModel.items[index].bio.name,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios_outlined,
                          color: Colors.white),
                    ],
                  ),
                ),
              ));
        },
        itemCount: viewModel.items.length,
      ),
    );
  }

  @override
  EmployVM viewModelBuilder(BuildContext context) {
    return EmployVM();
  }
}
