import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_training/task5/whatsapp_vm.dart';
import 'package:stacked/stacked.dart';

class WhatsappHomeScreen extends ViewModelBuilderWidget<WhatsappViewModel> {
  const WhatsappHomeScreen({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, WhatsappViewModel viewModel, Widget? child) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          bottom: const TabBar(
              indicatorColor: Colors.white70,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 4,
              tabs: [
                Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.white,
                ),
                Text(
                  'CHATS',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'GROUPS',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'STATUS',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'CALLS',
                  style: TextStyle(color: Colors.white),
                ),
              ]),
          title: Row(
            children: [
              const Text(
                'Whatsapp',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.search),
                color: Colors.white,
                onPressed: () {},
              ),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                icon: const Icon(Icons.menu_rounded),
                color: Colors.white,
                onPressed: () {},
              )
            ],
          ),
        ),
        body: TabBarView(children: [
          const Icon(Icons.camera_alt_rounded),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 4, 12, 0),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          flex: 3,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('assets/DSC_0030.JPG'),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          flex: 18,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    viewModel.items[index].contactName,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                  const Spacer(),
                                  Text(
                                    viewModel.items[index].lastSeen,
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(viewModel.items[index].lastMsg,
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 12))
                            ],
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 64),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    )
                  ],
                );
              },
              itemCount: viewModel.items.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 12, 12, 0),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          flex: 4,
                          child: CircleAvatar(
                            radius: 24,
                            backgroundImage: AssetImage('assets/DSC_0030.JPG'),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          flex: 18,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    viewModel.items[index].groupName,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                  const Spacer(),
                                  Text(
                                    viewModel.items[index].lastSeen,
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(viewModel.items[index].lastGroupMsg,
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 12))
                            ],
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 76),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    )
                  ],
                );
              },
              itemCount: viewModel.items.length,
            ),
          ),
          const Icon(Icons.camera_alt_rounded),
          Padding(
            padding: const EdgeInsets.fromLTRB(6, 12, 12, 0),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          flex: 4,
                          child: CircleAvatar(
                            radius: 24,
                            backgroundImage: AssetImage('assets/DSC_0030.JPG'),
                          ),
                        ),
                        Expanded(
                          flex: 18,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    viewModel.items[index].contactName,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.call,
                                    color: Colors.grey[700],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              // Icon(Icons.arrow_upward_rounded),
                              Text(viewModel.items[index].lastCall,
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 12))
                            ],
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 62),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    )
                  ],
                );
              },
              itemCount: viewModel.items.length,
            ),
          ),
        ]),
      ),
    );
  }

  @override
  WhatsappViewModel viewModelBuilder(BuildContext context) {
    return WhatsappViewModel();
  }
}
