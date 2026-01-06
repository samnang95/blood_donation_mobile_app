import 'package:get/get.dart';

import '../../data/x_model_donation_request.dart';

class DonationRequestController extends GetxController {
  RxList<XModelDonationRequest> donationRequests =
      <XModelDonationRequest>[].obs;
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
        name: "Alice Brown",
        location: "Houston, TX",
        timeAgo: "3 Hours Ago",
        status: null,
        bloodType: "AB+",
      ),
      XModelDonationRequest(
        name: "Charlie Wilson",
        location: "Phoenix, AZ",
        timeAgo: "5 Hours Ago",
        status: null,
        bloodType: "A-",
      ),
      XModelDonationRequest(
        name: "Diana Lee",
        location: "Philadelphia, PA",
        timeAgo: "2 Days Ago",
        status: null,
        bloodType: "B-",
      ),
    ]);
  }
}
