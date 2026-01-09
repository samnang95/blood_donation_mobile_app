import 'package:get/get.dart';

import '../../data/x_model_notication.dart';

class NotificationSection {
  final String date;
  final RxList<NotificationItem> items;

  NotificationSection({required this.date, required this.items});
}

class NotificationController extends GetxController {
  RxList<NotificationItem> notifications = <NotificationItem>[].obs;
  RxList<NotificationSection> sections = <NotificationSection>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Add dummy data
    notifications.addAll([
      NotificationItem(
        title: 'Donation Update',
        message: 'your blood donation has been\nsuccessfully processed.',
        time: '23min',
      ),
      NotificationItem(
        title: 'Appointment Reminder',
        message: 'Your next donation appointment is\nscheduled for tomorrow.',
        time: '1h',
      ),
      NotificationItem(
        title: 'Health Check',
        message: 'Please complete your health\ncheck form.',
        time: '2h',
      ),
      NotificationItem(
        title: 'Donation Camp',
        message: 'Join our blood donation camp\nat City Hall tomorrow.',
        time: '3h',
      ),
      NotificationItem(
        title: 'Eligibility Update',
        message: 'You are now eligible for\nanother donation.',
        time: '4h',
      ),
      NotificationItem(
        title: 'Thank You Note',
        message: 'Thank you for your generous\ncontribution to save lives.',
        time: '5h',
      ),
      NotificationItem(
        title: 'Emergency Alert',
        message: 'Urgent need for blood type O+.\nPlease consider donating.',
        time: '6h',
      ),
      NotificationItem(
        title: 'Survey Request',
        message: 'Help us improve by taking\nour quick survey.',
        time: '7h',
      ),
      NotificationItem(
        title: 'Volunteer Opportunity',
        message: 'Become a volunteer and\nhelp organize events.',
        time: '8h',
      ),
      NotificationItem(
        title: 'Blood Drive',
        message: 'Participate in the upcoming\nblood drive at the hospital.',
        time: '9h',
      ),
    ]);

    // Create sections
    sections.add(
      NotificationSection(
        date: 'Today',
        items: notifications.sublist(0, 3).obs,
      ),
    );
    sections.add(
      NotificationSection(
        date: 'Yesterday',
        items: notifications.sublist(3, 6).obs,
      ),
    );
    // sections.add(
    //   NotificationSection(
    //     date: 'Tomorrow',
    //     items: notifications.sublist(6).obs,
    //   ),
    // );
  }
}
