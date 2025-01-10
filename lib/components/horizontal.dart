import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          Categories(
            image_location: 'images/dress.png',
            image_caption: 'Dress',
          ),
          Categories(
            image_location: 'images/jeans.png',
            image_caption: 'Jeans',
          ),
          Categories(
            image_location: 'images/blazer.png',
            image_caption: 'Formal',
          ),
          Categories(
            image_location: 'images/shoe.png', // Corrected typo
            image_caption: 'Shoe',
          ),
          Categories(
            image_location: 'images/accessories.png',
            image_caption: 'Accessories',
          ),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  final String image_location;
  final String image_caption;

  const Categories({
    super.key,
    required this.image_location,
    required this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {
          // Add your onTap logic here
        },
        child: SizedBox(
          width: 100.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image_location,
                width: 50.0, // Adjusted for better visual clarity
                height: 50.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 5.0),
              Text(
                image_caption,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 12.0,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
