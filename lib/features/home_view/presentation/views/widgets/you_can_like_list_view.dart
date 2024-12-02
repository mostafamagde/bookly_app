import 'package:flutter/material.dart';

import 'custom_list_item.dart';

class YouCanLikeListView extends StatelessWidget {
  const YouCanLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    var media =MediaQuery.of(context).size;
    return SizedBox(
      height:media.height*.18 ,


      child: ListView.builder(
        clipBehavior: Clip.hardEdge,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CustomBookItem(imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fimage&psig=AOvVaw2w4Yb-7varFcHUURVpBq80&ust=1733186414760000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCNjUoNbsh4oDFQAAAAAdAAAAABAE",),
          );
        } ,
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
