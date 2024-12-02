import 'package:bookly_app/features/home_view/data/models/BookModel.dart';
import 'package:flutter/material.dart';

import '../../../../../core/routes_manager/routes_names.dart';
import '../../../../../core/utils/assets.dart';
import 'book_rating.dart';
import 'custom_list_item.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var media = MediaQuery.of(context).size;
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: SizedBox(
            height: 125,
            child: CustomBookItem(
              imageUrl: bookModel.volumeInfo!.imageLinks!.smallThumbnail!,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 51),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: media.width * .5,
                  child: Text(
                    bookModel.volumeInfo!.title!,
                    style: theme.textTheme.titleMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  "J.K. Rowling",
                  style: theme.textTheme.displayMedium,
                ),
                Row(
                  children: [
                    Text(
                      "Free",
                      style: theme.textTheme.bodyMedium,
                    ),
                    const Spacer(),
                    BookRating(
                      rating: bookModel.volumeInfo?.language ?? "0",
                      ratingCount:
                          bookModel.volumeInfo?.language ?? "0",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
