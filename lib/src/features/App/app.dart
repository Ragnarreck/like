import 'package:flutter/material.dart';
import 'package:like/src/features/Chat/chat.dart';
import 'package:like/src/features/Login/login.dart';
import 'package:like/src/features/News/news.dart';
import 'package:like/src/features/Offers/offers.dart';
import 'package:like/src/features/Suggestions/suggestions.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Like',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/news': (context) => NewsScreen(),
        '/offers': (context) => OffersScreen(),
        '/suggestions': (context) => SuggestionsScreen(),
        '/chat': (context) => ChatScreen(),
      },
    );
  }
}
