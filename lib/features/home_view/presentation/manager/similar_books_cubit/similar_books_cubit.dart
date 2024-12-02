import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home_view/data/models/BookModel.dart';
import 'package:bookly_app/features/home_view/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  HomeRepo homeRepo;

  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  Future<void> fetchSimilarBooks(String category) async {
    emit(SimilarBooksLoading());
    var books = await homeRepo.fetchSimilarBooks(category);
    books.fold(
      (failure) => emit(
        SimilarBooksFailure(errorMessage: failure.errMessage),
      ),
      (books) => emit(
        SimilarBooksSuccess(books: books),
      ),
    );
  }
}
