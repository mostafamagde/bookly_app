import 'package:flutter/material.dart';

import '../../../../../core/routes_manager/routes_names.dart';
import '../../../../../core/utils/assets.dart';
import 'book_rating.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var media = MediaQuery.of(context).size;
    return InkWell(
      onTap: () => Navigator.pushNamed(context, RoutesNames.detailsView),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
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
                      BookRating(),

                    ],
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

