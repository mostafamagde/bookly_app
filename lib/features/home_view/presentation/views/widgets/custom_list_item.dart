import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class FeaturedListItem extends StatelessWidget {
  const FeaturedListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: AssetImage(
              AssetsData.testImage,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
