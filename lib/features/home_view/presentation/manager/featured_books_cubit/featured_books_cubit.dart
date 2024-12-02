import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home_view/data/models/BookModel.dart';
import 'package:bookly_app/features/home_view/data/repos/home_repo.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';

import '../../../data/repos/home_repo_imp.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    final featuredBooks = await homeRepo.fetchFeaturedBooks();
    featuredBooks.fold((failure) {
      emit(FeaturedBooksFailure(failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
