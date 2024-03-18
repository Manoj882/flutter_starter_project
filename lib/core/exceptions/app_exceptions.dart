import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exceptions.freezed.dart';

@freezed
class AppException with _$AppException {
  factory AppException.noInternetConnection({
    required String message,
    Map<String, dynamic>? errors,
  }) = _NoInternetConnectionException;

  factory AppException.badRequest({
    required String message,
    Map<String, dynamic>? errors,
  }) = _BadRequestException;

  factory AppException.unAuthorized({
    required String message,
    Map<String, dynamic>? errors,
  }) = _UnAuthorizedException;

  factory AppException.unProcessableEntity({
    required String message,
    Map<String, dynamic>? errors,
  }) = _UnProcessableEntityException;

  factory AppException.forbidden({
    required String message,
    Map<String, dynamic>? errors,
  }) = _ForbiddenException;

  factory AppException.formatNotParsable({
    required String message,
    Map<String, dynamic>? errors,
  }) = _FormatNotParsableException;

  factory AppException.internalServerException({
    required String message,
    Map<String, dynamic>? errors,
  }) = _InternalServerException;

  factory AppException.cacheException({
    required String message,
    Map<String, dynamic>? errors,
  }) = _CacheException;

  factory AppException.unknownException({
    required String message,
    Map<String, dynamic>? errors,
  }) = _UnknownException;

  factory AppException.timeOutException({
    required String message,
    Map<String, dynamic>? errors,
  }) = _TimeOutException;

  factory AppException.notFoundException({
    required String message,
    Map<String, dynamic>? errors,
  }) = _NotFoundException;

  factory AppException.conflictException({
    required String message,
    Map<String, dynamic>? errors,
  }) = _ConflictException;

  factory AppException.notAcceptableException({
    required String message,
    Map<String, dynamic>? errors,
  }) = _NotAcceptableException;
}
