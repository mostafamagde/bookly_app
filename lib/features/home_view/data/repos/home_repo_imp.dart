import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home_view/data/models/BookModel.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/errors.dart';
import 'home_repo.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService service;

  HomeRepoImp(this.service);

  @override
  Future<Either<Errors, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await service.get(
          "volumes?Filtering=free-ebooks&q=subject=programming&sorting=newest");
      List<BookModel> books = [];
      for (var element in data["items"]) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerError.fromDioError(e));
      }
      return left(ServerError(e.toString()));
    }
  }

  @override
  Future<Either<Errors, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await service
          .get("volumes?Filtering=free-ebooks&q=subject=programming");
      List<BookModel> books = [];
      for (var element in data["items"]) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerError.fromDioError(e));
      }
      return left(ServerError(e.toString()));
    }
  }
}
