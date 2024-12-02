import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/newest_books_cubit/newest_books_cubit.dart';
import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is NewestBooksSuccess) {
          return ListView.builder(
            itemBuilder: (context, index) => BestSellerItem(
              bookModel: state.books[index],
            ),
            itemCount: state.books.length,
            physics: const NeverScrollableScrollPhysics(),
          );
        } else {
          return const Center(
            child: Text('Error loading books'),
          );
        }
      },
    );
  }
}
