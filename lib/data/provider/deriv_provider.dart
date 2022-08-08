import 'dart:convert';

import 'package:crypto_tracker/data/remote/dto/active_symbol_request.dart';
import 'package:crypto_tracker/data/remote/dto/forget_request.dart';
import 'package:crypto_tracker/data/remote/dto/ticks_request.dart';
import 'package:crypto_tracker/data/remote/dto/ticks_response.dart';
import 'package:crypto_tracker/domain/model/market_list_entity.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../remote/dto/active_symbol_response.dart';

class DerivProvider {
  late final WebSocketChannel _channelMarketList;
  WebSocketChannel? _channelTicks;

  DerivProvider()
      : _channelMarketList = WebSocketChannel.connect(
            Uri.parse("wss://ws.binaryws.com/websockets/v3?app_id=1089"));

  Stream<MarketListEntity> get marketListEntityStream =>
      _channelMarketList.stream
          .map((value) => ActiveSymbolResponse.fromJson(jsonDecode(value)))
          .map((v) => v.mapToEntity());

  void fetchMarketList() {
    _channelMarketList.sink.add(jsonEncode(
        ActiveSymbolRequest(activeSymbols: "brief", productType: "basic")));
  }

  void closeMarketList() {
    _channelMarketList.sink.close();
  }

  Stream<TickSpotData> subscribeToTicks(String symbol) {
    _channelTicks = WebSocketChannel.connect(
        Uri.parse("wss://ws.binaryws.com/websockets/v3?app_id=1089"));
    // _channelTicks not null here
    _channelTicks!.sink
        .add(jsonEncode(TicksRequest(ticks: symbol, subscribe: 1)));

    return _channelTicks!.stream
        .map((value) => TicksResponse.fromJson(jsonDecode(value)))
        .map((v) => v.tick);
  }

  void unSubscribeFromTicks(String streamId) {
    _channelTicks?.sink.add(jsonEncode(ForgetRequest(streamId: streamId)));
    _channelTicks?.sink.close();
  }
}
