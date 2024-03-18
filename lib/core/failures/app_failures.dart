import 'package:freezed_annotation/freezed_annotation.dart';

import '../exceptions/app_exceptions.dart';

part 'app_failures.freezed.dart';

@freezed
class AppFailure with _$AppFailure {
  factory AppFailure.noInternetConnection({
    required String message,
    Map<String, dynamic>? errors,
  }) = _NoInternetConnectionFailure;

  factory AppFailure.badRequest({
    required String message,
    Map<String, dynamic>? errors,
  }) = _BadRequestFailure;

  factory AppFailure.unAuthorized({
    required String message,
    Map<String, dynamic>? errors,
  }) = _UnAuthorizedFailure;

  factory AppFailure.unProcessableEntity({
    required String message,
    Map<String, dynamic>? errors,
  }) = _UnProcessableEntityFailure;

  factory AppFailure.forbidden({
    required String message,
    Map<String, dynamic>? errors,
  }) = _ForbiddenFailure;

  factory AppFailure.formatNotParsable({
    required String message,
    Map<String, dynamic>? errors,
  }) = _FormatNotParsableFailure;

  factory AppFailure.internalServerFailure({
    required String message,
    Map<String, dynamic>? errors,
  }) = _InternalServerFailure;

  factory AppFailure.cacheFailure({
    required String message,
    Map<String, dynamic>? errors,
  }) = _CacheFailure;

  factory AppFailure.unknownFailure({
    required String message,
    Map<String, dynamic>? errors,
  }) = _UnknownFailure;

  factory AppFailure.timeOutFailure({
    required String message,
    Map<String, dynamic>? errors,
  }) = _TimeOutFailure;

  factory AppFailure.notFoundFailure({
    required String message,
    Map<String, dynamic>? errors,
  }) = _NotFoundFailure;

  factory AppFailure.conflictFailure({
    required String message,
    Map<String, dynamic>? errors,
  }) = _ConflictFailure;

  factory AppFailure.notAcceptableFailure({
    required String message,
    Map<String, dynamic>? errors,
  }) = _NotAcceptableFailure;

  factory AppFailure.fromException(
    AppException exception,
  ) {
    return exception.map(
      noInternetConnection: (e) => AppFailure.noInternetConnection(
        message: e.message,
        errors: e.errors,
      ),
      badRequest: (e) => AppFailure.badRequest(message: e.message),
      unAuthorized: (e) => AppFailure.unAuthorized(
        message: e.message,
        errors: e.errors,
      ),
      unProcessableEntity: (e) => AppFailure.unProcessableEntity(
        message: e.message,
        errors: e.errors,
      ),
      forbidden: (e) => AppFailure.forbidden(
        message: e.message,
        errors: e.errors,
      ),
      formatNotParsable: (e) => AppFailure.formatNotParsable(
        message: e.message,
        errors: e.errors,
      ),
      internalServerException: (e) => AppFailure.internalServerFailure(
        message: e.message,
        errors: e.errors,
      ),
      cacheException: (e) => AppFailure.cacheFailure(
        message: e.message,
        errors: e.errors,
      ),
      unknownException: (e) => AppFailure.unknownFailure(
        message: e.message,
        errors: e.errors,
      ),
      timeOutException: (e) => AppFailure.timeOutFailure(
        message: e.message,
        errors: e.errors,
      ),
      notFoundException: (e) => AppFailure.notFoundFailure(
        message: e.message,
        errors: e.errors,
      ),
      conflictException: (e) => AppFailure.conflictFailure(
        message: e.message,
        errors: e.errors,
      ),
      notAcceptableException: (e) => AppFailure.notAcceptableFailure(
        message: e.message,
        errors: e.errors,
      ),
    );
  }
}
