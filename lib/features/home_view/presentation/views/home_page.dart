import 'package:bookly_app/features/home_view/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeViewBody(),
                SizedBox(height: media.height * .05),
                const FeaturedListView(),
                SizedBox(
                  height: media.height * .06,
                ),
                Text(
                  "    Best seller",
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
          ),
          const SliverFillRemaining(
            child: BestSellerListView(),
          )
        ],
      ),
    );
  }
}
