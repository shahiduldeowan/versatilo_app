// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class FeatureModel extends Equatable {
  final String title;
  final String description;
  final String image;

  const FeatureModel({
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  List<Object> get props => [title, description, image];
}
