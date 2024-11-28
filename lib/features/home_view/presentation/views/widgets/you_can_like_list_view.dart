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
            child: CustomBookItem(),
          );
        } ,
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
