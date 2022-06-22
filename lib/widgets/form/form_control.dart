import 'package:flutter/material.dart';

class FormControl extends StatefulWidget {
  const FormControl({super.key});

  @override
  State<FormControl> createState() => _FormControlState();
}

class _FormControlState extends State<FormControl> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Title',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          ElevatedButton(
            child: const Text('Submit'),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                debugPrint('Form is valid');
              }
            },
          ),
        ],
      ),
    );
  }
}
