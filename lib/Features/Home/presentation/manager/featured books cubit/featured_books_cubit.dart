import 'package:bloc/bloc.dart';
import 'package:e_bookly/Features/Home/data/models/book_model/bookModel.dart';
import 'package:e_bookly/Features/Home/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure) => emit(FeaturedBooksFailure(failure.errMessage)),
        (books) => emit(FeaturedBooksSuccess(books)));
  }
}
