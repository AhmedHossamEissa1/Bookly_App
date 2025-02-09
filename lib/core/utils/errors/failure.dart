import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);
  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connectionTimeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('sendTimeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receiveTimeout');
      case DioExceptionType.badCertificate:
        return ServerFailure('badCertificate');
      case DioExceptionType.badResponse:
        return ServerFailure('badResponse');
      case DioExceptionType.cancel:
        return ServerFailure('cancel');
      case DioExceptionType.connectionError:
        return ServerFailure('connectionError');
      case DioExceptionType.unknown:
        return ServerFailure('unknown');
        
      default: return ServerFailure('unknown');
    }
  }
}



