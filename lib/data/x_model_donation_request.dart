class DonationRequest {
  final String name;
  final String location;
  final String timeAgo;
  final String status;
  final String bloodType;

  DonationRequest({
    required this.name,
    required this.location,
    required this.timeAgo,
    required this.status,
    required this.bloodType,
  });
}
