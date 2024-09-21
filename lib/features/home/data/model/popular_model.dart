import 'package:equatable/equatable.dart';

class PopularModel extends Equatable {
  final int id;
  final String title;
  final String description;
  final String image;
  final double price;

  const PopularModel({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.price,
  });

  @override
  List<Object> get props {
    return [
      id,
      title,
      description,
      image,
      price,
    ];
  }
}
