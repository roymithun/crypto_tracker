import 'package:crypto_tracker/domain/model/market_list_entity.dart';
import 'package:crypto_tracker/presentation/market_list/cubit/market_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/remote/dto/ticks_response.dart';
import 'market_list/cubit/market_state.dart';

class PriceTrackerPage extends StatefulWidget {
  const PriceTrackerPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() => _PriceTrackerPageState();
}

class _PriceTrackerPageState extends State<PriceTrackerPage> {
  late MarketEntity? _selectedMarket;
  late SymbolEntity? _selectedSymbol;
  TickSpotData? _initialTickSpotData;
  TickSpotData? _tickSpotData;

  MarketEntity defaultMarketEntity =
      MarketEntity(marketCode: '-', marketDisplayName: 'Select a Market');
  SymbolEntity defaultSymbolEntity = SymbolEntity(
      symbolCode: '-', symbolType: '-', displayName: 'Select an Asset');

  late Map<MarketEntity, List<SymbolEntity>> _marketToSymbolMap = {};
  final List<DropdownMenuItem<MarketEntity>> _marketItems = [];
  final List<DropdownMenuItem<SymbolEntity>> _symbolItems = [];

  @override
  void initState() {
    super.initState();
    BlocProvider.of<MarketCubit>(context).fetchMarketList();
  }

  void _refreshSymbolDropdown() {
    _symbolItems.clear();
    _symbolItems.add(DropdownMenuItem(
        value: defaultSymbolEntity,
        child: Text(defaultSymbolEntity.displayName)));
    _symbolItems.addAll(
        _marketToSymbolMap[_selectedMarket]?.map((e) => DropdownMenuItem(
                  child: Text(e.displayName),
                  value: e,
                )) ??
            []);
    _selectedSymbol = defaultSymbolEntity;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: BlocConsumer<MarketCubit, MarketState>(
            builder: (context, state) {
              if (state is MarketIdle) {
                return SizedBox.shrink();
              } else if (state is MarketListLoading) {
                return Center(child: CircularProgressIndicator());
              } else if (state is MarketListSuccess) {
                _marketToSymbolMap = state.marketToSymbolMap;
                _selectedMarket = defaultMarketEntity;

                Set<MarketEntity> unique = Set();
                unique.add(defaultMarketEntity);
                unique.addAll(_marketToSymbolMap.keys);

                Iterable<DropdownMenuItem<MarketEntity>> map = unique.map((e) =>
                    DropdownMenuItem(
                        value: e, child: Text(e.marketDisplayName)));

                _marketItems.addAll(map);

                _refreshSymbolDropdown();
                return Center(child: buildDropdowns());
              } else if (state is MarketListError) {
                return Text('MarketListError');
              } else if (state is MarketListSelectionUpdate) {
                return Center(
                    child: buildDropdownsWithSelection(state.marketEntity));
              } else if (state is TickLoading) {
                return buildTickSpotProgressLayout();
              } else if (state is TickSuccess) {
                state.streamTick.listen((data) {
                  if (_initialTickSpotData == null) _initialTickSpotData = data;
                  BlocProvider.of<MarketCubit>(context).onTickUpdate(data);
                });
                return buildTickSpotProgressLayout();
              } else if (state is TickDataUpdate) {
                _tickSpotData = state.tick;
                return buildTickSpotDataLayout();
              } else if (state is TickError) {
                return buildTickSpotDataErrorLayout(state.message);
              } else {
                return Text('Error');
              }
            },
            listener: (context, state) {}));
  }

  Widget buildDropdowns() {
    return Column(
      children: [
        DropdownButton(
            value: _selectedMarket,
            items: _marketItems,
            onChanged: (MarketEntity? marketEntity) {
              _selectedMarket = marketEntity!;
              BlocProvider.of<MarketCubit>(context)
                  .onMarketEntityUpdate(marketEntity);
              _refreshSymbolDropdown();
              _selectedSymbol = defaultSymbolEntity;
              if (_tickSpotData != null) {
                BlocProvider.of<MarketCubit>(context)
                    .unSubscribeFromTicks(_tickSpotData!.id);
                _initialTickSpotData = null;
                _tickSpotData = null;
              }
            }),
        DropdownButton(
            value: _selectedSymbol,
            items: _symbolItems,
            onChanged: (SymbolEntity? symbolEntity) {
              _initialTickSpotData = null;
              if (_tickSpotData != null) {
                BlocProvider.of<MarketCubit>(context)
                    .unSubscribeFromTicks(_tickSpotData!.id);
              }
              _selectedSymbol = symbolEntity!;
              if (_selectedSymbol == defaultSymbolEntity) {
                _tickSpotData = null;
              } else {
                BlocProvider.of<MarketCubit>(context)
                    .subscribeToTicks(_selectedSymbol!.symbolCode);
              }
            }),
      ],
    );
  }

  Widget buildDropdownsWithSelection(MarketEntity marketEntity) {
    return Column(
      children: [
        DropdownButton(
            value: marketEntity,
            items: _marketItems,
            onChanged: (MarketEntity? marketEntity) {
              _selectedMarket = marketEntity!;
              BlocProvider.of<MarketCubit>(context)
                  .onMarketEntityUpdate(marketEntity);
              _refreshSymbolDropdown();
              _selectedSymbol = defaultSymbolEntity;
              if (_tickSpotData != null) {
                BlocProvider.of<MarketCubit>(context)
                    .unSubscribeFromTicks(_tickSpotData!.id);
                _initialTickSpotData = null;
                _tickSpotData = null;
              }
            }),
        DropdownButton(
            value: _selectedSymbol,
            items: _symbolItems,
            onChanged: (SymbolEntity? symbolEntity) {
              _initialTickSpotData = null;
              if (_tickSpotData != null) {
                BlocProvider.of<MarketCubit>(context)
                    .unSubscribeFromTicks(_tickSpotData!.id);
              }
              _selectedSymbol = symbolEntity!;
              if (_selectedSymbol == defaultSymbolEntity) {
                _initialTickSpotData = null;
                _tickSpotData = null;
              } else {
                BlocProvider.of<MarketCubit>(context)
                    .subscribeToTicks(_selectedSymbol!.symbolCode);
              }
            }),
      ],
    );
  }

  Widget buildTickSpotProgressLayout() {
    return Center(
        child: Column(
      children: [
        buildDropdowns(),
        Expanded(child: Center(child: CircularProgressIndicator()))
      ],
    ));
  }

  Widget buildTickSpotDataLayout() {
    return Center(
        child: Column(
      children: [
        buildDropdowns(),
        Visibility(
            visible: _tickSpotData != null,
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Price: ",
                    style: TextStyle(color: getPriceColor(), fontSize: 24.0),
                  ),
                  Text('${_tickSpotData?.quote}',
                      style: TextStyle(color: getPriceColor(), fontSize: 24.0))
                ],
              ),
            ))
      ],
    ));
  }

  Widget buildTickSpotDataErrorLayout(String errorMessage) {
    return Center(
        child: Column(
      children: [buildDropdowns(), Text(errorMessage)],
    ));
  }

  Color getPriceColor() {
    if (_tickSpotData == null || _initialTickSpotData == null)
      return Colors.black;
    if (_tickSpotData!.quote < _initialTickSpotData!.quote) {
      return Colors.red;
    } else if (_tickSpotData!.quote > _initialTickSpotData!.quote) {
      return Colors.green;
    }
    return Colors.black;
  }
}
