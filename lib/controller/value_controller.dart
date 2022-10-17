import 'package:get/state_manager.dart';

class ValueController extends GetxController {
  RxString defineValue = ''.obs;
  RxBool isLoading = false.obs;

  Future<void> setValue(String newValue) async {
    isLoading.value = true;

    await Future.delayed(const Duration(seconds: 2));

    defineValue.value = newValue;

    isLoading.value = false;
  }
}
