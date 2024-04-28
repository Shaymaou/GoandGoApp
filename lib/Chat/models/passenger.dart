// passenger.dart
import 'people.dart';

class Passenger extends People {
  final String passengerId;

  Passenger({
    required super.name,
    required super.gender,
    required super.avatarUrl,
    required super.lastMessage,
    required super.dateTime,
    required super.unreadCount,
    required this.passengerId,
  });
}
