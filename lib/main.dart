import 'package:flutter/material.dart';
import 'package:tutorials/Pages/home_page.dart';
import 'package:tutorials/core/store.dart';
import 'package:tutorials/models/cart.dart';
import 'package:tutorials/models/catalog.dart';
import 'package:tutorials/utils/routes.dart';
import 'package:tutorials/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Pages/cart_page.dart';
import 'Pages/login_page.dart';

void main() {
  runApp(VxState(store: MyStore(CatalogModel(), CartModel()), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
