import 'package:bookly_app/features/home_view/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/you_can_like_list_view.dart';
import 'package:flutter/material.dart';

import 'book_details_app_bar.dart';
import 'custom_button.dart';
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
              child: const CustomBookItem(imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fimage&psig=AOvVaw2w4Yb-7varFcHUURVpBq80&ust=1733186414760000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCNjUoNbsh4oDFQAAAAAdAAAAABAE",),
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
            const BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
              ratingCount: "5",
              rating: "10",
            ),
            const SizedBox(
              height: 37,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                    border: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    containerColor: Colors.white,
                    text: "19.99€",
                    textColor: Colors.black),
                CustomButton(
                  border: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  containerColor: Color(0xFFEF8262),
                  text: "Free preview",
                  textColor: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 49,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You can also like",
                  style: theme.textTheme.displayMedium?.copyWith(
                    color: Colors.white
                  ),
                ),
            ),
            const SizedBox(height: 16,),
            const YouCanLikeListView()

          ],
        ),
      ),
    );
  }
}
