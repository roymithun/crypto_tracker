import 'package:crypto_tracker/data/remote/dto/ticks_response.dart';
import 'package:crypto_tracker/domain/model/market_list_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_state.freezed.dart';

abstract class MarketState {
  MarketState._();
}

class MarketIdle implements MarketState {}

class MarketListLoading implements MarketState {}

@freezed
class MarketListSuccess with _$MarketListSuccess implements MarketState {
  const factory MarketListSuccess(
          {required Map<MarketEntity, List<SymbolEntity>> marketToSymbolMap}) =
      _MarketListSuccess;
}

@freezed
class MarketListError with _$MarketListError implements MarketState {
  const factory MarketListError({required String message}) = _MarketListError;
}

@freezed
class MarketListSelectionUpdate with _$MarketListSelectionUpdate implements MarketState {
  const factory MarketListSelectionUpdate({required MarketEntity marketEntity}) = _MarketListSelectionUpdate;
}

class TickLoading implements MarketState {}

@freezed
class TickSuccess with _$TickSuccess implements MarketState {
  const factory TickSuccess({required Stream<TickSpotData> streamTick}) =
      _TickSuccess;
}

@freezed
class TickDataUpdate with _$TickDataUpdate implements MarketState {
  const factory TickDataUpdate({required TickSpotData tick}) = _TickDataUpdate;
}

@freezed
class TickError with _$TickError implements MarketState {
  const factory TickError({required String message}) = _TickError;
}
