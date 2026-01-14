import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DonorSearchController extends GetxController {
  RxList<Map<String, dynamic>> donors = <Map<String, dynamic>>[].obs;
  RxBool showDivider = true.obs;
  ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {
      showDivider.value = scrollController.offset > 0;
    });
    donors.addAll([
      {'name': 'John Doe', 'hospital': 'City Hospital', 'bloodType': 'A+'},
      {'name': 'Jane Smith', 'hospital': 'General Hospital', 'bloodType': 'O-'},
      {
        'name': 'Alice Johnson',
        'hospital': 'Metro Hospital',
        'bloodType': 'B+',
      },
      {'name': 'Bob Brown', 'hospital': 'Regional Clinic', 'bloodType': 'AB-'},
      {
        'name': 'Charlie Davis',
        'hospital': 'Central Hospital',
        'bloodType': 'A-',
      },
      {'name': 'Diana Evans', 'hospital': 'Unity Hospital', 'bloodType': 'O+'},
      {'name': 'Edward Foster', 'hospital': 'Hope Clinic', 'bloodType': 'B-'},
      {
        'name': 'Fiona Garcia',
        'hospital': 'Sunrise Hospital',
        'bloodType': 'AB+',
      },
      {
        'name': 'George Harris',
        'hospital': 'Valley Hospital',
        'bloodType': 'A+',
      },
      {'name': 'Helen Ingram', 'hospital': 'Peak Clinic', 'bloodType': 'O-'},
      {'name': 'Ian Jackson', 'hospital': 'Ridge Hospital', 'bloodType': 'B+'},
      // Add more sample donors as needed
    ]);
  }
}
