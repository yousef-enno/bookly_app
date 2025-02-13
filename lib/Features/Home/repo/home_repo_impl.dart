import 'package:dartz/dartz.dart';
import 'package:e_bookly/Features/Home/data/models/book_model/bookModel.dart';
import 'package:e_bookly/Features/Home/repo/home_repo.dart';
import 'package:e_bookly/core/errors/failure.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}