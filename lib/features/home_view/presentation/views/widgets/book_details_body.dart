import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home_view/data/models/BookModel.dart';
import 'package:bookly_app/features/home_view/data/repos/home_repo.dart';
import 'package:bookly_app/features/home_view/data/repos/home_repo_imp.dart';
import 'package:bookly_app/features/home_view/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/you_can_like_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import 'book_details_app_bar.dart';
import 'custom_button.dart';
import 'custom_list_item.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return BlocProvider(
      create: (context) =>
          SimilarBooksCubit(ServiceLocator.getIt.get<HomeRepoImp>())
            ..fetchSimilarBooks(book.volumeInfo!.categories![0]),
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }  else if(state is  SimilarBooksSuccess){
            return Scaffold(
              body: Padding(
                padding:  EdgeInsets.only(right: 30, left: 30, top: 40),
                child: Column(
                  children: [
                     BookDetailsAppBar(),
                    SizedBox(
                      width: media.width * .54,
                      child: CustomBookItem(
                        imageUrl:
                          book.volumeInfo!.imageLinks!.smallThumbnail!

                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      book.volumeInfo!.title!,
                      style: theme.textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Opacity(
                      opacity: .7,
                      child: Text(
                        book.volumeInfo!.publisher!,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CustomButton(
                            border: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            containerColor: Colors.white,
                            text: "Free",
                            textColor: Colors.black),
                        CustomButton(
                          onPressed: () async {
                            var uri=Uri.parse(book.volumeInfo!.previewLink!);
                            if(await canLaunchUrl(uri)){
                              await launchUrl(uri);
                            }else{
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text("Error"),
                                  content: Text("Unable to launch URL"),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("OK"),
                                    )
                                  ],
                                ),
                              );
                            }


                          },
                          border: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          containerColor: const Color(0xFFEF8262),
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
                        style: theme.textTheme.displayMedium
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    YouCanLikeListView(
                      book: state.books,
                    )
                  ],
                ),
              ),
            );
          }else  {
            return Text("ERROR");
          }
        },
      ),
    );
  }
}
