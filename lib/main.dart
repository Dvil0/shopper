import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopper/common/theme.dart';
import 'package:shopper/models/catalog_model.dart';
import 'package:shopper/screens/catalog_view.dart';
import 'package:shopper/screens/login_view.dart';

void main() {
  runApp( MyApp() );
}

class MyApp extends StatelessWidget {

  @override
  Widget build( BuildContext context ) {
    return MultiProvider(
      providers: [
        Provider( create: ( context ) => CatalogModel() )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopper Demo',
        theme: appTheme,
        initialRoute: '/',
        routes: {
          '/'   : ( context ) => LoginView(),
          '/catalog' : ( context ) => CatalogView()
        }
      )
    );
  }
}
