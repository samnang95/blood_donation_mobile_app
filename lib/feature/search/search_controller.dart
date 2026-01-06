import 'package:get/get.dart';

import '../../core/constants/app_images.dart';

class SearchController extends GetxController {
  RxList<Map<String, dynamic>> donors = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    donors.addAll([
      {
        'name': 'John Doe',
        'hospital': 'City Hospital',
        'bloodType': 'A+',
        'imageProfile': AppImages.profile,
      },
      {
        'name': 'Jane Smith',
        'hospital': 'General Hospital',
        'bloodType': 'O-',
        'imageProfile': AppImages.profile,
      },
      {
        'name': 'Alice Johnson',
        'hospital': 'Metro Hospital',
        'bloodType': 'B+',
        'imageProfile': AppImages.profile,
      },
      {
        'name': 'Bob Brown',
        'hospital': 'Regional Clinic',
        'bloodType': 'AB-',
        'imageProfile': AppImages.profile,
      },
      {
        'name': 'Charlie Davis',
        'hospital': 'Central Hospital',
        'bloodType': 'A-',
        'imageProfile': AppImages.profile,
      },
      {
        'name': 'Diana Evans',
        'hospital': 'Unity Hospital',
        'bloodType': 'O+',
        'imageProfile': AppImages.profile,
      },
      {
        'name': 'Edward Foster',
        'hospital': 'Hope Clinic',
        'bloodType': 'B-',
        'imageProfile': AppImages.profile,
      },
      {
        'name': 'Fiona Garcia',
        'hospital': 'Sunrise Hospital',
        'bloodType': 'AB+',
        'imageProfile': AppImages.profile,
      },
      {
        'name': 'George Harris',
        'hospital': 'Valley Hospital',
        'bloodType': 'A+',
        'imageProfile': AppImages.profile,
      },
      {
        'name': 'Helen Ingram',
        'hospital': 'Peak Clinic',
        'bloodType': 'O-',
        'imageProfile': AppImages.profile,
      },
      {
        'name': 'Ian Jackson',
        'hospital': 'Ridge Hospital',
        'bloodType': 'B+',
        'imageProfile': AppImages.profile,
      },
      // Add more sample donors as needed
    ]);
  }
}
