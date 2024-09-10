import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/src/core/theme/theme_provider.dart';
import 'package:instagram_clone/src/view/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const InstaApp(),
    ),
  );
}

class InstaApp extends StatelessWidget {
  const InstaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const MainScreen(),
    );
  }
}