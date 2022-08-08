import 'package:crypto_tracker/data/provider/deriv_provider.dart';
import 'package:crypto_tracker/presentation/market_list/cubit/market_cubit.dart';
import 'package:crypto_tracker/presentation/price_tracker_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider(
          create: (context) {
            return MarketCubit(DerivProvider());
          },
          child: PriceTrackerPage(title: 'Price Tracker'),
        ));
  }
}
