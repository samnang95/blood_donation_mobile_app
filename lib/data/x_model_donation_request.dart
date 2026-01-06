class XModelDonationRequest {
  final String name;
  final String location;
  final String timeAgo;
  final String? status;
  final String bloodType;

  XModelDonationRequest({
    required this.name,
    required this.location,
    required this.timeAgo,
    this.status,
    required this.bloodType,
  });
}
