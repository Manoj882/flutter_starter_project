import 'dart:io';
import 'package:dio/dio.dart';
import '../constants/app_failure_messages.dart';
import '../exceptions/app_exceptions.dart';

class DioExceptionHandler {
  static AppException handle(
      {required DioException dioException,
      String unAuthorizedErrorMessage = AppFailureMessages.kUnauthorized}) {
    switch (dioException.type) {
      case DioExceptionType.badResponse:
        return _errorResponseHandler(dioException.response!,
            unAuthorizedErrorMessage: unAuthorizedErrorMessage);

      case DioExceptionType.cancel:
        return AppException.unknownException(
            message: AppFailureMessages.kUnknownError);

      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return AppException.timeOutException(
            message: AppFailureMessages.kTimeOut);

      case DioExceptionType.unknown:
      default:
        return AppException.unknownException(
            message: AppFailureMessages.kUnknownError);
    }
  }

  static _errorResponseHandler(Response response,
      {required String unAuthorizedErrorMessage}) {
    switch (response.statusCode) {
      case HttpStatus
            .badRequest: // When form data is not invalid and request is sent
        try {
          String errorMessage = '';
          final Map<String, dynamic> errors = response.data['errors'];
          if (errors.isNotEmpty) {
            errorMessage = errors.entries.first.value;
            return AppException.badRequest(message: errorMessage);
          }
          errorMessage = response.data['message'];

          return AppException.badRequest(message: errorMessage.toString());
        } catch (_) {}

        return AppException.badRequest(message: AppFailureMessages.kBadRequest);

      case HttpStatus.unauthorized: // User session expired
        return AppException.unAuthorized(message: unAuthorizedErrorMessage);

      case HttpStatus.forbidden: // User does not have enough access
        return AppException.forbidden(message: AppFailureMessages.kForbidden);

      case HttpStatus
            .unprocessableEntity: // When form data is valid but request cannot be processed
        try {
          final Map<String, dynamic> errors = response.data['errors'];

          if (errors.isNotEmpty) {
            List<dynamic> firstError = errors.entries.first.value;

            if (firstError.isNotEmpty) {
              return AppException.unProcessableEntity(
                  message: firstError.first.toString());
            }
          }
        } catch (_) {}

        return AppException.unProcessableEntity(
            message: AppFailureMessages.kUnProcessableEntity);

      case HttpStatus.notFound:
        try {
          final errorMessage = response.data['message'];
          return AppException.notFoundException(
            message: errorMessage.toString(),
          );
        } catch (_) {}
        return AppException.notFoundException(
            message: AppFailureMessages.kNotFound);

      case HttpStatus.conflict:
        try {
          final errorMessage = response.data['message'];
          return AppException.conflictException(
              message: errorMessage.toString());
        } catch (_) {}

        return AppException.conflictException(
            message: AppFailureMessages.kConflictException);

      case HttpStatus.notAcceptable:
        try {
          final errorMessage = response.data['message'];
          return AppException.notAcceptableException(
              message: errorMessage.toString());
        } catch (_) {}
        return AppException.notAcceptableException(
            message: AppFailureMessages.kNotAcceptable);

      case HttpStatus.internalServerError:
      default:
        return AppException.internalServerException(
            message: AppFailureMessages.kInternalServerError);
    }
  }
}
