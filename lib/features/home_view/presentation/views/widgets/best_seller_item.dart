import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var media = MediaQuery.of(context).size;
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, top: 10),
          child: SizedBox(
            height: 125,
            child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AssetsData.testImage,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 30, right: 51),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: media.width * .5,
                  child: Text(
                    "Harry Potter and the Goblet Fire",
                    style: theme.textTheme.titleMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "J.K. Rowling",
                  style: theme.textTheme.displayMedium,
                ),
                Row(
                  children: [
                    Text(
                      "19.99 €",
                      style: theme.textTheme.bodyMedium,
                    ),
                    Spacer(),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      color: Color(0xFFFFDD4F),
                    ),
                    SizedBox(width: 6.3,),
                    Text(
                      "4.8",
                      style:
                          theme.textTheme.titleMedium?.copyWith(fontSize: 16),
                    ),
                    SizedBox(width: 9,),

                    Text(
                      "(2390)",
                      style: theme.textTheme.displayMedium,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
