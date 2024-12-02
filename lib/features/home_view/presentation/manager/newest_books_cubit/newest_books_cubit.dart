import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home_view/data/models/BookModel.dart';
import 'package:bookly_app/features/home_view/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var newestBooks = await homeRepo.fetchFeaturedBooks();
    newestBooks.fold((failure) {
      emit(NewestBooksFailure(error: failure.errMessage));
    }, (books) {
      emit(NewestBooksSuccess(books: books));
    });
  }
}
