import 'package:get/state_manager.dart';

class ValueController extends GetxController {
  String defineValue = '';
  bool isLoading = false;

  Future<void> setValue(String value) async {
    isLoading = true;
    update();

    await Future.delayed(const Duration(seconds: 2));

    defineValue = value;

    isLoading = false;
    update();
  }
}
