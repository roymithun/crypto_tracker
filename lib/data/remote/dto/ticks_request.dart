import 'package:json_annotation/json_annotation.dart';

part 'ticks_request.g.dart';

@JsonSerializable()
class TicksRequest {
  final String ticks;
  final int? subscribe;

  TicksRequest({required this.ticks, this.subscribe});

  factory TicksRequest.fromJson(Map<String, dynamic> json) =>
      _$TicksRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TicksRequestToJson(this);
}
