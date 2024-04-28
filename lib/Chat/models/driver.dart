// driver.dart
import 'people.dart';
class Driver extends People {
  final String vehicleModel;

  Driver({
    required super.name,
    required super.gender,
    required super.avatarUrl,
    required super.lastMessage,
    required super.dateTime,
    required super.unreadCount,
    required this.vehicleModel,
  });
}