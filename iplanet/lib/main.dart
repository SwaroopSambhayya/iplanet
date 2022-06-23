import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iplanet/screens/splashscreen.dart';
import 'package:iplanet/theme.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  init();
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(themeMode: ThemeMode.system),
      builder: (context, child) => const MyApp(),
    ),
  );
}

void init() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: context.watch<ThemeProvider>().getTheme() == 'dark'
          ? Brightness.light
          : Brightness.dark,
    ));
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: context.read<ThemeProvider>().getLightThemeData(),
      themeMode: context.watch<ThemeProvider>().themeMode,
      darkTheme: context.read<ThemeProvider>().getDarkThemeData(),
      home: const SplashScreen(),
    );
  }
}
