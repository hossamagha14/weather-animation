import 'package:dio/dio.dart';

abstract class Error {
  final String errMessage;

  Error(this.errMessage);
}

class ApiError extends Error {
  ApiError(super.errMessage);

  factory ApiError.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ApiError(
            'Connection timed out. Please check your internet connection.');
      case DioExceptionType.sendTimeout:
        return ApiError(
            'Request timed out while sending data. Please try again.');
      case DioExceptionType.receiveTimeout:
        return ApiError(
            'Server took too long to respond. Please try again later.');
      case DioExceptionType.badCertificate:
        return ApiError(
            'Invalid SSL certificate. Secure connection cannot be established.');
      case DioExceptionType.badResponse:
        ApiError apiError= ApiError.badResponse(dioError);
        return apiError;
      case DioExceptionType.cancel:
        return ApiError('Request was canceled. Please try again if needed.');
      case DioExceptionType.connectionError:
        return ApiError('No internet connection. Please check your network.');
      case DioExceptionType.unknown:
        return ApiError(
            'An unexpected error occurred. Please try again later.');
    }
  }

  factory ApiError.badResponse(DioException dioError) {
    int? statusCode = dioError.response?.statusCode;
    if (statusCode != null) {
      if (statusCode == 400) {
        return ApiError('Bad request. Please check your input.');
      } else if (statusCode == 401) {
        return ApiError('Invalid email or password. Please log in again.');
      } else if (statusCode == 403) {
        return ApiError('Forbidden. You do not have permission.');
      } else if (statusCode == 404) {
        return ApiError('Resource not found. Please try again.');
      } else if (statusCode >= 500) {
        return ApiError('Server error. Please try again later.');
      } else {
        return ApiError('Unexpected error,Please try again later');
      }
    } else {
      return ApiError('Unexpected error,Please try again later');
    }
  }
}
