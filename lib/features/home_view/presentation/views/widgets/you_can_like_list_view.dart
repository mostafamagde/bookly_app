import 'package:bookly_app/features/home_view/data/models/BookModel.dart';
import 'package:flutter/material.dart';

import '../../../../../core/routes_manager/routes_names.dart';
import 'custom_list_item.dart';

class YouCanLikeListView extends StatelessWidget {
  const YouCanLikeListView({super.key, required this.book});

  final List<BookModel> book;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SizedBox(
      height: media.height * .18,
      child: ListView.builder(
        clipBehavior: Clip.hardEdge,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: InkWell(
              onTap: () => Navigator.pushNamed(
                context,
                RoutesNames.detailsView,
                arguments: book,
              ),
              child: CustomBookItem(
                  imageUrl:
                      book[index].volumeInfo!.imageLinks!.smallThumbnail!),
            ),
          );
        },
        itemCount: book.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
