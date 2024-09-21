// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class NotificationModel extends Equatable {
  final int id;
  final String title;
  final String message;
  final String timestamp;

  const NotificationModel({
    required this.id,
    required this.title,
    required this.message,
    required this.timestamp,
  });

  String get getAbbreviation {
    return title.split(' ').map((word) => word[0]).take(2).join().toUpperCase();
  }

  @override
  List<Object> get props => [id, title, message, timestamp];
}
