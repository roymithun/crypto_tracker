// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_symbol_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveSymbol _$ActiveSymbolFromJson(Map<String, dynamic> json) => ActiveSymbol(
      displayName: json['display_name'] as String,
      market: json['market'] as String,
      marketDisplayName: json['market_display_name'] as String,
      symbol: json['symbol'] as String,
      symbolType: json['symbol_type'] as String,
    );

Map<String, dynamic> _$ActiveSymbolToJson(ActiveSymbol instance) =>
    <String, dynamic>{
      'display_name': instance.displayName,
      'market': instance.market,
      'market_display_name': instance.marketDisplayName,
      'symbol': instance.symbol,
      'symbol_type': instance.symbolType,
    };

ActiveSymbolResponse _$ActiveSymbolResponseFromJson(
        Map<String, dynamic> json) =>
    ActiveSymbolResponse(
      activeSymbols: (json['active_symbols'] as List<dynamic>)
          .map((e) => ActiveSymbol.fromJson(e as Map<String, dynamic>))
          .toList(),
      echoRequest: ActiveSymbolRequest.fromJson(
          json['echo_req'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActiveSymbolResponseToJson(
        ActiveSymbolResponse instance) =>
    <String, dynamic>{
      'active_symbols': instance.activeSymbols,
      'echo_req': instance.echoRequest,
    };
