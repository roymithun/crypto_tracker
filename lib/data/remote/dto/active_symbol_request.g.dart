// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_symbol_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveSymbolRequest _$ActiveSymbolRequestFromJson(Map<String, dynamic> json) =>
    ActiveSymbolRequest(
      activeSymbols: json['active_symbols'] as String,
      productType: json['product_type'] as String?,
    );

Map<String, dynamic> _$ActiveSymbolRequestToJson(
        ActiveSymbolRequest instance) =>
    <String, dynamic>{
      'active_symbols': instance.activeSymbols,
      'product_type': instance.productType,
    };
