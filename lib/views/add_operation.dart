import 'package:flutter/material.dart';

import '../models/operations/operation_types.dart';

class AddOperation extends StatefulWidget {
  const AddOperation({required this.type, super.key});

  final OperationTypes type;

  @override
  State<AddOperation> createState() => _AddOperationState();
}

class _AddOperationState extends State<AddOperation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add operation'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('${widget.type}'),
          onPressed: () {
            debugPrint('Add operation ${widget.type}');
          },
        ),
      ),
    );
    //   return Scaffold(
    //     backgroundColor: primary,
    //     appBar: AppBar(
    //       iconTheme: const IconThemeData(color: Colors.white),
    //       foregroundColor: Colors.white,
    //       backgroundColor: primary,
    //       title: const Text(
    //         'New operation',
    //         style: TextStyle(
    //             color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    //       ),
    //     ),
    //     body: const SafeArea(
    //       child: Padding(
    //         padding: EdgeInsets.symmetric(vertical: 20, horizontal: 35),
    //         child: FormControl(),
    //       ),
    //     ),
    //   );
  }
}
