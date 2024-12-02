import 'package:bookly_app/features/home_view/presentation/views/widgets/custom_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/routes_manager/routes_names.dart';
import '../../manager/featured_books_cubit/featured_books_cubit.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: media.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(
                        context, RoutesNames.detailsView,
                        arguments:
                            state.books[index]),
                    child: CustomBookItem(
                      imageUrl:
                          state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                    ),
                  ),
                );
              },
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return const Text('An error occurred while fetching featured books.');
        } else {
          return Center(child: const CircularProgressIndicator());
        }
      },
    );
  }
}
