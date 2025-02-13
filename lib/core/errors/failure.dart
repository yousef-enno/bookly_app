import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection timeout with ApiServer');
      case DioException.sendTimeout:
        return ServerFailure(errMessage: 'Send timeout with ApiServer');
      case DioException.receiveTimeout:
        return ServerFailure(errMessage: 'Receive timeout with ApiServer');
      case DioException.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioException.requestCancelled:
        return ServerFailure(errMessage: 'Request to ApiServer was canceled');
      default:
        return ServerFailure(errMessage: 'Oops There Was An Error');
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errMessage: 'Your request not found , Please try later');
    } else if (statusCode == 500) {
      return ServerFailure(
          errMessage: 'Internal Server error , Please try later ');
    } else {
      return ServerFailure(
          errMessage: 'Oops There was an Error , Please try later');
    }
  }
}
