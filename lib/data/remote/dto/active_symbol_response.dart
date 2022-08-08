import "package:collection/collection.dart";
import 'package:crypto_tracker/data/remote/dto/active_symbol_request.dart';
import 'package:crypto_tracker/domain/model/market_list_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'active_symbol_response.g.dart';

@JsonSerializable()
class ActiveSymbol {
  @JsonKey(name: 'display_name')
  final String displayName;

  final String market;

  @JsonKey(name: 'market_display_name')
  final String marketDisplayName;

  final String symbol;

  @JsonKey(name: 'symbol_type')
  final String symbolType;

  ActiveSymbol(
      {required this.displayName,
      required this.market,
      required this.marketDisplayName,
      required this.symbol,
      required this.symbolType});

  factory ActiveSymbol.fromJson(Map<String, dynamic> json) =>
      _$ActiveSymbolFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveSymbolToJson(this);
}

@JsonSerializable()
class ActiveSymbolResponse {
  @JsonKey(name: "active_symbols")
  final List<ActiveSymbol> activeSymbols;

  @JsonKey(name: "echo_req")
  final ActiveSymbolRequest echoRequest;

  ActiveSymbolResponse(
      {required this.activeSymbols, required this.echoRequest});

  factory ActiveSymbolResponse.fromJson(Map<String, dynamic> json) =>
      _$ActiveSymbolResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveSymbolResponseToJson(this);
}

extension ActiveSymbolResponseExt on ActiveSymbolResponse {
  MarketListEntity mapToEntity() {
    return MarketListEntity(
        mapMarketToSymbolList: activeSymbols
            .groupFoldBy<MarketEntity, List<SymbolEntity>>(
                (element) => MarketEntity(
                marketCode: element.market,
                marketDisplayName: element.marketDisplayName),
                (previous, element) => (previous ?? [])
              ..add(SymbolEntity(
                  symbolCode: element.symbol,
                  symbolType: element.symbolType,
                  displayName: element.displayName))));
  }
}

