import 'package:get/get.dart';

import '../../data/x_model_donation_request.dart';
import '../../data/x_model_request_donation.dart';

class HomeController extends GetxController {
  RxList<XModelDonationRequest> donationRequests =
      <XModelDonationRequest>[].obs;
  RxList<XModelRequestDonation> requestsDonation =
      <XModelRequestDonation>[].obs;

  @override
  void onInit() {
    super.onInit();
    donationRequests.addAll([
      XModelDonationRequest(
        name: "John Doe",
        location: "New York, NY",
        timeAgo: "2 Hours Ago",
        status: "Pending",
        bloodType: "A+",
      ),
      XModelDonationRequest(
        name: "Jane Smith",
        location: "Los Angeles, CA",
        timeAgo: "4 Hours Ago",
        status: "Urgent",
        bloodType: "O-",
      ),
      XModelDonationRequest(
        name: "Bob Johnson",
        location: "Chicago, IL",
        timeAgo: "1 Day Ago",
        status: "Pending",
        bloodType: "B+",
      ),
      XModelDonationRequest(
        name: "Alice Brown",
        location: "Houston, TX",
        timeAgo: "3 Hours Ago",
        status: "Pending",
        bloodType: "AB+",
      ),
      XModelDonationRequest(
        name: "Charlie Wilson",
        location: "Phoenix, AZ",
        timeAgo: "5 Hours Ago",
        status: "Urgent",
        bloodType: "A-",
      ),
      XModelDonationRequest(
        name: "Diana Lee",
        location: "Philadelphia, PA",
        timeAgo: "2 Days Ago",
        status: "Pending",
        bloodType: "B-",
      ),
    ]);

    requestsDonation.addAll([
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
        status: "Urgent",
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
        name: "Alice Brown",
        location: "Houston, TX",
        timeAgo: "3 Hours Ago",
        status: "Pending",
        bloodType: "AB+",
      ),
      XModelRequestDonation(
        name: "Charlie Wilson",
        location: "Phoenix, AZ",
        timeAgo: "5 Hours Ago",
        status: "Urgent",
        bloodType: "A-",
      ),
      XModelRequestDonation(
        name: "Diana Lee",
        location: "Philadelphia, PA",
        timeAgo: "2 Days Ago",
        status: "Pending",
        bloodType: "B-",
      ),
    ]);
  }
}
