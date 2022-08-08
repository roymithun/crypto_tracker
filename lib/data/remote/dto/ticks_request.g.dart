// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticks_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicksRequest _$TicksRequestFromJson(Map<String, dynamic> json) => TicksRequest(
      ticks: json['ticks'] as String,
      subscribe: json['subscribe'] as int?,
    );

Map<String, dynamic> _$TicksRequestToJson(TicksRequest instance) =>
    <String, dynamic>{
      'ticks': instance.ticks,
      'subscribe': instance.subscribe,
    };
