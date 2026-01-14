import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/x_model_donation_request.dart';
import '../../data/x_model_request_donation.dart';

class ReportController extends GetxController {
  RxList<XModelDonationRequest> donationRequests =
      <XModelDonationRequest>[].obs;
  RxList<XModelRequestDonation> requestDonation = <XModelRequestDonation>[].obs;
  final PageController pageController = PageController();
  final RxInt currentPage = 0.obs;
  final RxSet<int> selectedItems = <int>{}.obs;
  RxBool showDivider = false.obs;
  ScrollController scrollController1 = ScrollController();
  ScrollController scrollController2 = ScrollController();
  @override
  void onInit() {
    super.onInit();
    donationRequests.addAll([
      XModelDonationRequest(
        name: "John Doe",
        location: "New York, NY",
        timeAgo: "2 Hours Ago",
        status: null,
        bloodType: "A+",
      ),
      XModelDonationRequest(
        name: "Jane Smith",
        location: "Los Angeles, CA",
        timeAgo: "4 Hours Ago",
        status: null,
        bloodType: "O-",
      ),
      XModelDonationRequest(
        name: "Bob Johnson",
        location: "Chicago, IL",
        timeAgo: "1 Day Ago",
        status: null,
        bloodType: "B+",
      ),
      XModelDonationRequest(
        name: "John Doe",
        location: "New York, NY",
        timeAgo: "2 Hours Ago",
        status: null,
        bloodType: "A+",
      ),
      XModelDonationRequest(
        name: "Jane Smith",
        location: "Los Angeles, CA",
        timeAgo: "4 Hours Ago",
        status: null,
        bloodType: "O-",
      ),
      XModelDonationRequest(
        name: "Bob Johnson",
        location: "Chicago, IL",
        timeAgo: "1 Day Ago",
        status: null,
        bloodType: "B+",
      ),
      XModelDonationRequest(
        name: "John Doe",
        location: "New York, NY",
        timeAgo: "2 Hours Ago",
        status: null,
        bloodType: "A+",
      ),
      XModelDonationRequest(
        name: "Jane Smith",
        location: "Los Angeles, CA",
        timeAgo: "4 Hours Ago",
        status: null,
        bloodType: "O-",
      ),
      XModelDonationRequest(
        name: "Bob Johnson",
        location: "Chicago, IL",
        timeAgo: "1 Day Ago",
        status: null,
        bloodType: "B+",
      ),
    ]);

    requestDonation.addAll([
      XModelRequestDonation(
        name: "John Doe",
        location: "New York, NY",
        timeAgo: "2 Hours Ago",
        status: "Pending",
        bloodType: "A+",
      ),
      XModelRequestDonation(
        name: "Jane Smith",
        location: "Los Angeles, CA",
        timeAgo: "4 Hours Ago",
        status: "Completed",
        bloodType: "O-",
      ),
      XModelRequestDonation(
        name: "Bob Johnson",
        location: "Chicago, IL",
        timeAgo: "1 Day Ago",
        status: "Pending",
        bloodType: "B+",
      ),
      XModelRequestDonation(
        name: "John Doe",
        location: "New York, NY",
        timeAgo: "2 Hours Ago",
        status: "Pending",
        bloodType: "A+",
      ),
      XModelRequestDonation(
        name: "Jane Smith",
        location: "Los Angeles, CA",
        timeAgo: "4 Hours Ago",
        status: "Completed",
        bloodType: "O-",
      ),
      XModelRequestDonation(
        name: "Bob Johnson",
        location: "Chicago, IL",
        timeAgo: "1 Day Ago",
        status: "Pending",
        bloodType: "B+",
      ),
      XModelRequestDonation(
        name: "John Doe",
        location: "New York, NY",
        timeAgo: "2 Hours Ago",
        status: "Pending",
        bloodType: "A+",
      ),
      XModelRequestDonation(
        name: "Jane Smith",
        location: "Los Angeles, CA",
        timeAgo: "4 Hours Ago",
        status: "Completed",
        bloodType: "O-",
      ),
      XModelRequestDonation(
        name: "Bob Johnson",
        location: "Chicago, IL",
        timeAgo: "1 Day Ago",
        status: "Pending",
        bloodType: "B+",
      ),
    ]);

    scrollController1.addListener(() {
      showDivider.value = scrollController1.offset > 0;
    });
    scrollController2.addListener(() {
      showDivider.value = scrollController2.offset > 0;
    });
  }
}
