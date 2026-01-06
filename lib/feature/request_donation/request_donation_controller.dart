import 'package:get/get.dart';

import '../../data/x_model_donation_request.dart';

class RequestDonationController extends GetxController {
  RxList<DonationRequest> donationRequests = <DonationRequest>[].obs;
  @override
  void onInit() {
    super.onInit();
    donationRequests.addAll([
      DonationRequest(
        name: "John Doe",
        location: "New York, NY",
        timeAgo: "2 Hours Ago",
        status: "Pending",
        bloodType: "A+",
      ),
      DonationRequest(
        name: "Jane Smith",
        location: "Los Angeles, CA",
        timeAgo: "4 Hours Ago",
        status: "Completed",
        bloodType: "O-",
      ),
      DonationRequest(
        name: "Bob Johnson",
        location: "Chicago, IL",
        timeAgo: "1 Day Ago",
        status: "Pending",
        bloodType: "B+",
      ),
      DonationRequest(
        name: "Alice Brown",
        location: "Houston, TX",
        timeAgo: "3 Hours Ago",
        status: "Pending",
        bloodType: "AB+",
      ),
      DonationRequest(
        name: "Charlie Wilson",
        location: "Phoenix, AZ",
        timeAgo: "5 Hours Ago",
        status: null,
        bloodType: "A-",
      ),
      DonationRequest(
        name: "Diana Lee",
        location: "Philadelphia, PA",
        timeAgo: "2 Days Ago",
        status: "Pending",
        bloodType: "B-",
      ),
    ]);
  }
}
