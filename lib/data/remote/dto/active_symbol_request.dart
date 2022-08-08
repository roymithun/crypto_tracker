import 'package:json_annotation/json_annotation.dart';

part 'active_symbol_request.g.dart';

@JsonSerializable()
class ActiveSymbolRequest {
  @JsonKey(name: 'active_symbols')
  final String activeSymbols;

  @JsonKey(name: 'product_type')
  final String? productType;

  ActiveSymbolRequest({required this.activeSymbols, this.productType});

  factory ActiveSymbolRequest.fromJson(Map<String, dynamic> json) =>
      _$ActiveSymbolRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveSymbolRequestToJson(this);
}
