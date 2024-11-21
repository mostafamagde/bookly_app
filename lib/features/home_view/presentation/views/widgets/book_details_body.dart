import 'package:flutter/material.dart';

import 'book_details_app_bar.dart';
import 'custom_list_item.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30, top: 40),
        child: Column(
          children: [
            const BookDetailsAppBar(),
            SizedBox(
              width: media.width * .54,
              child: CustomBookItem(),
            ),
          ],
        ),
      ),
    );
  }
}
