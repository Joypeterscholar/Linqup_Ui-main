import 'package:linqup_mobile_application/enums/enum_data.dart';

class User {
  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.bio,
    required this.interest,
    required this.interestIn,
    required this.lookingFor,
    required this.occupation,
    required this.religion,
    required this.dateJoined,
    required this.dateOfBirth,
    required this.hobbies,
    required this.education,
    required this.location,
    required this.matches,
    required this.likes,
    required this.walletBalance,
    required this.email,
    required this.phoneNumber,
    required this.profilePictureUrl,
  });
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final String bio;
  final String profilePictureUrl;
  final Interest interest;
  final InterestIn interestIn;
  final String lookingFor;
  final String occupation;
  final String religion;
  final String dateJoined;
  final String dateOfBirth;
  final String hobbies;
  final String education;
  final String location;
  final String matches;
  final String likes;
  final String walletBalance;
}
