import 'package:json_annotation/json_annotation.dart';

part 'forget_response.g.dart';

@JsonSerializable()
class ForgetResponse {
  final int forget;

  ForgetResponse({required this.forget});

  factory ForgetResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ForgetResponseToJson(this);
}