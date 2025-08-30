import 'package:linqup_mobile_application/enums/enum_data.dart';
import 'package:linqup_mobile_application/model/user/user.dart';

class Discover {
  const Discover({
    required this.id,
    required this.name,
    required this.state,
    required this.description,
    required this.content,
    required this.imageUrl,
    required this.category,
    required this.categoryIcon,
    required this.userProfile,
  });
  final String id;
  final User name;
  final String state;
  final String imageUrl;
  final String description;
  final String content;
  final Category category;
  final CategoryIcon categoryIcon;
  final User userProfile;
}
