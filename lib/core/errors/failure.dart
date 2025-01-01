import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection time out with api server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send time out with api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive time out with api server');
      case DioExceptionType.badCertificate:
        return ServerFailure(
            'Bad certificate: The server\'s SSL certificate is not valid or trusted.');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to the server was cancelled.');
      case DioExceptionType.connectionError:
        return ServerFailure(
            'Connection error: Unable to connect to the server.');
      case DioExceptionType.unknown:
        if (dioException.message?.contains('SocketException') ?? false) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure(
            'An unknown error occurred. Please try again later.');

      default:
        return ServerFailure('Unexpected error occurred');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400) {
      final message = response['data'];
      return ServerFailure(message);
    } else if (statusCode == 401) {
      return ServerFailure(response['data']);
    } else if (statusCode == 403) {
      return ServerFailure(response['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          "Error 404: Resource not found. Please check the URL or resource you are trying to access.");
    } else if (statusCode == 500) {
      return ServerFailure(
          "Error 500: Internal server error. Please try again later.");
    } else {
      return ServerFailure(
          "An unexpected error occurred. Please try again later.");
    }
  }
}
