import 'package:advance_chapter_3/screens/home/home_screen.dart';
import 'package:advance_chapter_3/screens/web_view/providers/web_provider.dart';
import 'package:advance_chapter_3/screens/web_view/view/web_view_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => WebProvider(),
        )
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/webView',
        routes: {
          '/home': (context) => HomeScreen(),
          '/webView': (context) => WebViewScreen()
        },
      ),
    );
  }
}
