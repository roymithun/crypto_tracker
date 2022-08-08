import 'package:crypto_tracker/data/remote/dto/ticks_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticks_response.g.dart';

@JsonSerializable()
class TicksResponse {
  @JsonKey(name: "echo_req")
  final TicksRequest echoRequest;
  final TickSpotData tick;

  TicksResponse({required this.echoRequest, required this.tick});

  factory TicksResponse.fromJson(Map<String, dynamic> json) =>
      _$TicksResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TicksResponseToJson(this);
}

@JsonSerializable()
class TickSpotData {
  final num ask;
  final num bid;
  final int epoch;
  final String id;
  @JsonKey(name: "pip_size")
  final num pipSize;
  final num quote;
  final String symbol;

  TickSpotData(
      {required this.ask,
      required this.bid,
      required this.epoch,
      required this.id,
      required this.pipSize,
      required this.quote,
      required this.symbol});

  factory TickSpotData.fromJson(Map<String, dynamic> json) =>
      _$TickSpotDataFromJson(json);

  Map<String, dynamic> toJson() => _$TickSpotDataToJson(this);
}
