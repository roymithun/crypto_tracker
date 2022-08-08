// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticks_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicksResponse _$TicksResponseFromJson(Map<String, dynamic> json) =>
    TicksResponse(
      echoRequest:
          TicksRequest.fromJson(json['echo_req'] as Map<String, dynamic>),
      tick: TickSpotData.fromJson(json['tick'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TicksResponseToJson(TicksResponse instance) =>
    <String, dynamic>{
      'echo_req': instance.echoRequest,
      'tick': instance.tick,
    };

TickSpotData _$TickSpotDataFromJson(Map<String, dynamic> json) => TickSpotData(
      ask: json['ask'] as num,
      bid: json['bid'] as num,
      epoch: json['epoch'] as int,
      id: json['id'] as String,
      pipSize: json['pip_size'] as num,
      quote: json['quote'] as num,
      symbol: json['symbol'] as String,
    );

Map<String, dynamic> _$TickSpotDataToJson(TickSpotData instance) =>
    <String, dynamic>{
      'ask': instance.ask,
      'bid': instance.bid,
      'epoch': instance.epoch,
      'id': instance.id,
      'pip_size': instance.pipSize,
      'quote': instance.quote,
      'symbol': instance.symbol,
    };
