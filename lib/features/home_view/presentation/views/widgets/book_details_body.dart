import 'package:bookly_app/features/home_view/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import 'book_details_app_bar.dart';
import 'custom_list_item.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30, top: 40),
        child: Column(
          children: [
            const BookDetailsAppBar(),
            SizedBox(
              width: media.width * .54,
              child: const CustomBookItem(),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "The Jungle Book",
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(
              height: 4,
            ),
            Opacity(
              opacity: .7,
              child: Text(
                "Rudyard Kipling",
                style: theme.textTheme.titleMedium?.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
         const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
          ],
        ),
      ),
    );
  }
}
