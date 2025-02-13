import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_bookly/Features/Home/data/models/book_model/bookModel.dart';
import 'package:e_bookly/Features/Home/repo/home_repo.dart';
import 'package:e_bookly/core/errors/failure.dart';
import 'package:e_bookly/core/utils/api_services.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl({required this.apiServices});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?q=subject:Programming&Filtering=free-ebooks&sorting=newest');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(item);
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?q=subject:Programming&Filtering=free-ebooks');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(item);
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
