import 'package:doc_truyen/providers/favorite_provider.dart';
import 'package:doc_truyen/providers/history_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'responsive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HistoryProvider()),
        ChangeNotifierProvider(create: (context) => FavoriteProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: ResponsiveLayout(),
      ),
    );
  }
}

