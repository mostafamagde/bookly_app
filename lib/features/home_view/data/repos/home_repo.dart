import 'package:bookly_app/features/home_view/data/models/BookModel.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';

abstract class HomeRepo {
 Future<Either<Errors,List<BookModel>>> fetchBestSellerBooks();
 Future<Either<Errors,List<BookModel>>>  fetchFeaturedBooks();
}