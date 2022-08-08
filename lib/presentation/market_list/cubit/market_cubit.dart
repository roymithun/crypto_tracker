import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:crypto_tracker/data/remote/dto/ticks_response.dart';
import 'package:crypto_tracker/presentation/market_list/cubit/market_state.dart';

import '../../../data/provider/deriv_provider.dart';
import '../../../domain/model/market_list_entity.dart';

class MarketCubit extends Cubit<MarketState> {
  final DerivProvider _derivProvider;

  MarketCubit(this._derivProvider) : super(MarketIdle());

  Future<void> fetchMarketList() async {
    try {
      emit(MarketListLoading());
      Map<MarketEntity, List<SymbolEntity>> marketToSymbolMap = {};

      _derivProvider.fetchMarketList();
      _derivProvider.marketListEntityStream.listen((event) {
        emit(MarketListSuccess(marketToSymbolMap: event.mapMarketToSymbolList));
        _derivProvider.closeMarketList();
      });
    } on NetworkException {
      emit(MarketListError(
          message: "Couldn't fetch market list. Is the device online?"));
    }
  }

  Future<void> subscribeToTicks(String symbol) async {
    try {
      emit(TickLoading());
      emit(TickSuccess(streamTick: _derivProvider.subscribeToTicks(symbol)));
    } on NetworkException {
      emit(TickError(
          message: "Couldn't fetch market list. Is the device online?"));
    }
  }

  Future<void> unSubscribeFromTicks(String streamId) async {
    _derivProvider.unSubscribeFromTicks(streamId);
  }

  Future<void> onTickUpdate(TickSpotData data) async {
    emit(TickDataUpdate(tick: data));
  }

  Future<void> onMarketEntityUpdate(MarketEntity data) async {
    emit(MarketListSelectionUpdate(marketEntity: data));
  }
}

class NetworkException implements Exception {}
