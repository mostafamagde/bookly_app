import 'package:bookly_app/features/home_view/presentation/views/widgets/custom_list_item.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return SizedBox(
      height: media.height * .3,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: FeaturedListItem(),
          );
        },
        itemCount: 20,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
