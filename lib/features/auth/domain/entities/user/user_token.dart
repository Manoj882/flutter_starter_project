import 'package:equatable/equatable.dart';

class UserToken extends Equatable {
  @override
  List<Object?> get props => [idToken, refreshToken, fcmToken];

  final String idToken;
  final String refreshToken;
  final String fcmToken;

  const UserToken({
    required this.idToken,
    required this.refreshToken,
    required this.fcmToken,
  });
}
