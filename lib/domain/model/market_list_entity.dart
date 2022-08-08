class MarketListEntity {
  final Map<MarketEntity, List<SymbolEntity>> mapMarketToSymbolList;

  MarketListEntity({required this.mapMarketToSymbolList});
}

class MarketEntity {
  final String marketCode;
  final String marketDisplayName;

  MarketEntity({required this.marketCode, required this.marketDisplayName});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MarketEntity &&
          runtimeType == other.runtimeType &&
          marketCode == other.marketCode;

  @override
  int get hashCode => marketCode.hashCode;

  @override
  String toString() {
    return 'MarketEntity{marketCode: $marketCode, marketDisplayName: $marketDisplayName}';
  }
}

class SymbolEntity {
  final String symbolCode;
  final String symbolType;
  final String displayName;

  SymbolEntity(
      {required this.symbolCode,
      required this.symbolType,
      required this.displayName});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SymbolEntity &&
          runtimeType == other.runtimeType &&
          symbolCode == other.symbolCode;

  @override
  int get hashCode => symbolCode.hashCode;

  @override
  String toString() {
    return 'SymbolEntity{symbolCode: $symbolCode, symbolType: $symbolType, displayName: $displayName}';
  }
}
