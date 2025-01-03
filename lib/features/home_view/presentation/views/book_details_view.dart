import 'package:bookly_app/features/home_view/data/models/BookModel.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/book_details_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var book =ModalRoute.of(context)?.settings.arguments as BookModel;
    return  BookDetailsBody(book: book,);
  }
}
