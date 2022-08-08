import 'package:crypto_tracker/domain/model/market_list_entity.dart';

class MarketListItem {
  final Map<MarketItem, List<SymbolItem>> mapMarketToSymbolList;

  MarketListItem({required this.mapMarketToSymbolList});
}

class MarketItem {
  final String marketCode;
  final String marketDisplayName;

  MarketItem({required this.marketCode, required this.marketDisplayName});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MarketItem &&
          runtimeType == other.runtimeType &&
          marketCode == other.marketCode;

  @override
  int get hashCode => marketCode.hashCode;
}

class SymbolItem {
  final String symbolCode;
  final String symbolType;
  final String displayName;

  SymbolItem(
      {required this.symbolCode,
      required this.symbolType,
      required this.displayName});
}

extension MarketListEntityExt on MarketListEntity {
  MarketListItem mapEntityToItem() {
    return MarketListItem(
        mapMarketToSymbolList: mapMarketToSymbolList.map((key, value) =>
            MapEntry(
                MarketItem(
                    marketCode: key.marketCode,
                    marketDisplayName: key.marketDisplayName),
                value
                    .map((e) => SymbolItem(
                        symbolCode: e.symbolCode,
                        symbolType: e.symbolType,
                        displayName: e.displayName))
                    .toList())));
  }
}
