import 'package:bookly_app/features/home_view/data/models/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
 Future<Either<Error,List<BookModel>>> fetchBestSellerBooks();
 Future<Either<Error,List<BookModel>>>  fetchFeaturedBooks();
}