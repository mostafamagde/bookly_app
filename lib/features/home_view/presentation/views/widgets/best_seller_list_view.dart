import 'package:flutter/material.dart';

import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemBuilder: (context, index) => const BestSellerItem(),
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
