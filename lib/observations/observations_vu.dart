import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'observations_vm.dart';

class ObservationsScreen extends ViewModelBuilderWidget<ObservationsViewModel> {
  const ObservationsScreen({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, ObservationsViewModel viewModel, Widget? child) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return observationCell(viewModel.items[index]);
      },
      itemCount: viewModel.items.length,
    );
  }

  Column observationCell(item) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 8,
                height: 64,
                color: Colors.green[900],
              ),
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name.toString(),
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[700]),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(item.service.toString(),
                      style: const TextStyle(color: Colors.grey)),
                  Text(
                      // item.acquisitionTime.toString(),
                      item.acquisitionTime!,
                      style: const TextStyle(color: Colors.grey)),
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    item.measurementUnit ?? '--',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[700]),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(item.numericValue.toString(),
                      style:
                          const TextStyle(color: Colors.green, fontSize: 20)),
                  Text(item.measurementName.toString(),
                      style: const TextStyle(color: Colors.green, fontSize: 8)),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.grey),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Divider(
            color: Colors.grey,
          ),
        )
      ],
    );
  }

  @override
  ObservationsViewModel viewModelBuilder(BuildContext context) {
    final viewModel = ObservationsViewModel();

    return viewModel;
  }
}
