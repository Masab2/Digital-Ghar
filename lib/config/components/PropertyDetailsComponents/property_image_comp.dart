import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';

class PropertyImageCarousel extends StatelessWidget {
  final String imageUrl;
  const PropertyImageCarousel({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
      child: Image.network(
        imageUrl,
        width: double.infinity,
        height: context.mh * 0.3,
        fit: BoxFit.cover,
      ),
    );
  }
}
