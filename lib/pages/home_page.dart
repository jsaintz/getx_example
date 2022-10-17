import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/controller/value_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final textController = TextEditingController();

  final valueController = ValueController();

  @override
  Widget build(BuildContext context) {
    log('criou arvore');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<ValueController>(
              init: valueController,
              builder: (controller) {
                log('criou getx');
                return Text('Valor definido:${controller.defineValue}');
              },
            ),
            TextField(
              controller: textController,
            ),
            GetBuilder<ValueController>(
              init: valueController,
              builder: (ctrl) {
                return ctrl.isLoading
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: () {
                          String value = textController.text;

                          valueController.setValue(value);
                        },
                        child: const Text('Confirmar'),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}