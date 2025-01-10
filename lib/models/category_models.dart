import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String image;

  const Category({
    required this.name,
    required this.image,
  });

  @override
  List<Object?> get props => [name, image];

  static List<Category> categories = [
    const Category(
      name: 'Blazer',
      image: "images/IMG_4601.jpeg",
    ),
    const Category(
      name: 'Blazer',
      image: "images/IMG_4602.jpeg",
    ),
    const Category(
      name: 'Shoe',
      image: "images/IMG_4603.jpeg",
    ),
    const Category(
      name: 'Pants',
      image: "images/IMG_4604.jpeg",
    ),
    // const Category(
    //   name: 'a',
    //   image: "images/IMG_4601.jpeg",
    // ),
  ];
}
