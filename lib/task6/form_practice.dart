import 'package:flutter/material.dart';

class FormPractice extends StatefulWidget {
  const FormPractice({Key? key}) : super(key: key);

  @override
  _FormPracticeState createState() => _FormPracticeState();
}

class _FormPracticeState extends State<FormPractice> {
  final _myKey = GlobalKey<FormFieldState<String>>();
  String date = '';
  dynamic selectedvalue = 'male';
  final phoneController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Practice'),
      ),
      body: SingleChildScrollView(
          // key: ,
          child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Form(
          key: _myKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                controller: nameController,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Enter Name',
                  labelText: 'Name',
                ),
              ),
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: 'Enter Phone no.',
                  labelText: 'Phone',
                ),
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'Enter Email',
                  labelText: 'Email',
                ),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Expanded(flex: 1, child: Text('Gender')),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        ListTile(
                          title: const Text('Male'),
                          leading: Radio(
                              value: 'male',
                              groupValue: selectedvalue,
                              onChanged: (value) {
                                setState(() {
                                  selectedvalue = value;
                                });
                              }),
                        ),
                        ListTile(
                          title: const Text('Female'),
                          leading: Radio(
                              value: 'female',
                              groupValue: selectedvalue,
                              onChanged: (value) {
                                setState(() {
                                  selectedvalue = value;
                                });
                              }),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {
                        selectDate(context);
                      },
                      icon: const Icon(Icons.calendar_today)),
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                      '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        print('name: ' + nameController.text);
                        print('phone: ' + phoneController.text);
                        print('email: ' + emailController.text);
                        print('Date:$selectedDate');
                        print('Gender: ' + selectedvalue);
                      });
                    },
                    child: const Text(
                      'Submit',
                    )),
              )
            ],
          ),
        ),
      )),
    );
  }

  selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2010),
        lastDate: DateTime(2025));
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
      });
    }
  }
}
