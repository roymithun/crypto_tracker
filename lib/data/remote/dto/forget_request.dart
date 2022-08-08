import 'package:json_annotation/json_annotation.dart';

part 'forget_request.g.dart';

@JsonSerializable()
class ForgetRequest {
  @JsonKey(name: "forget")
  final String streamId;

  ForgetRequest({required this.streamId});

  factory ForgetRequest.fromJson(Map<String, dynamic> json) =>
      _$ForgetRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ForgetRequestToJson(this);
}