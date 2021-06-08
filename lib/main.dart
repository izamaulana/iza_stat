import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iza_stat/blocs/cart/cart.dart';
import 'package:iza_stat/blocs/catalog/catalog.dart';
import 'package:iza_stat/cubit/counter.dart';
import 'package:iza_stat/home.dart';
import 'package:iza_stat/screens/cart.dart';
import 'package:iza_stat/screens/catalog.dart';

void main() => runApp(MultiBlocProvider(providers: [
      BlocProvider(
        create: (BuildContext context) => CounterCubit(),
      ),
      BlocProvider(
        create: (BuildContext context) => CartBloc(),
      ),
      BlocProvider(
        create: (BuildContext context) => CatalogBloc(),
      ),
    ], child: MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => HomePage());
          case '/catalog':
            return MaterialPageRoute(builder: (_) => Catalog());
          case '/cart':
            return MaterialPageRoute(builder: (_) => Cart());
        }
      },
    );
  }
}
