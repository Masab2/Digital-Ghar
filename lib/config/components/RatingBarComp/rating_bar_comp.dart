import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingBarComp extends StatelessWidget {
  final String score;
  const RatingBarComp({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    double starCount = double.tryParse(score) ?? 0.0;
    return Row(
      children: [
        RatingBarIndicator(
          rating: starCount,
          itemBuilder: (context, index) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          itemCount: 5,
          itemSize: context.mh * 0.016,
          direction: Axis.horizontal,
        ),
        0.02.pw(context),
        Text(
          score,
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.016,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
