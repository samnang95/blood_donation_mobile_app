import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RequestFormController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController bloodTypeController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController notesController = TextEditingController();
  @override
  void onClose() {
    nameController.dispose();
    locationController.dispose();
    bloodTypeController.dispose();
    mobileController.dispose();
    notesController.dispose();
    super.onClose();
  }
}
