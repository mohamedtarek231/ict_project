import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final TextEditingController controllerNumber1 = TextEditingController();
  final TextEditingController controllerNumber2 = TextEditingController();

  int result = 0;

  final formKey = GlobalKey<FormState>();

  // @override
  // void dispose() {
  //   controllerNumber1.dispose();
  //   controllerNumber2.dispose();
  //   super.dispose();
  // }

  String? validateNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a number';
    }

    final number = int.tryParse(value);
    if (number == null) {
      return 'Please enter a valid number';
    }

    if (number >= 10) {
      return 'Number must be less than 10';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: controllerNumber1,
                keyboardType: TextInputType.number,
                validator: validateNumber,
                decoration: InputDecoration(
                  label: const Text('Enter number 1'),
                  hintText: 'Enter Number',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 3,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 3,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 3,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: controllerNumber2,
                keyboardType: TextInputType.number,
                validator: validateNumber,
                decoration: InputDecoration(
                  label: const Text('Enter number 2'),
                  hintText: 'Enter Number',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 3,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 3,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 3,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    // Parse text to integer and calculate result
                    int number1 = int.parse(controllerNumber1.text);
                    int number2 = int.parse(controllerNumber2.text);
                    setState(() {
                      result = number1 + number2;
                    });
                  } else {
                    print('Validation failed');
                  }
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 10),
              Text('Result: $result'),
            ],
          ),
        ),
      ),
    );
  }
}
