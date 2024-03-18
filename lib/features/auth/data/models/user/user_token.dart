import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/user/user_token.dart';

part 'user_token.g.dart';

@JsonSerializable()
class UserTokenModel extends UserToken {
  const UserTokenModel({
    required super.idToken,
    required super.refreshToken,
    required super.fcmToken,
  });

  factory UserTokenModel.fromJson(Map<String, dynamic> json) =>
      _$UserTokenModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserTokenModelToJson(this);
}
