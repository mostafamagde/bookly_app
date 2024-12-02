import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rating,
      required this.ratingCount});

  final String rating;
  final String ratingCount;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xFFFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          rating,
          style: theme.textTheme.titleMedium?.copyWith(fontSize: 16),
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
          ratingCount,
          style: theme.textTheme.displayMedium,
        ),
      ],
    );
  }
}
