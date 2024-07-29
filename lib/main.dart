
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'MainPage.dart';
import 'constants.dart';import 'StoryPage.dart';
import 'EventsPage.dart';import 'TeamPage.dart';import 'ProductsPage.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {


  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static void setLocale(BuildContext context, Locale newLocal) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocal);
  }
}


class _MyAppState extends State<MyApp> {
  bool _isLoading = true;
  Locale? _locale;
  @override
  void initState() {
    super.initState();
    _locale =const Locale('ar', '') ;
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });}
  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final screenHeight = constraints.maxHeight;
        final screenSize = _getScreenType(screenWidth);
        if (kDebugMode) {
          print(screenSize); print(screenWidth);print(screenHeight);
        }

        return MaterialApp(
          title:"Nebu Website",
          debugShowCheckedModeBanner: false,
          locale: _locale,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          builder: (context, child) => ResponsiveBreakpoints.builder(
            child: child!,
            breakpoints: [
              const Breakpoint(start: 0, end: 450, name: MOBILE),
              const Breakpoint(start: 451, end: 1000, name: TABLET),
              const Breakpoint(start: 1001, end: 1920, name: DESKTOP),
              const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
            ],
          ),

          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: blue),
            useMaterial3: true,
          ),
          home: _isLoading ? const SplashScreen() : const MainPage(),
          routes: {
            MainPage.id: (context) => const MainPage(),
            StoryPage.id: (context) =>
            const StoryPage(title: "story", ),
            HomePage.id: (context) =>
            const HomePage(title: "HomePage", ),
            ProductsPage.id: (context) =>
            const ProductsPage(title: "Products",),
            TeamPage.id: (context) => const TeamPage(
              title: "founders",),
            EventsPage.id: (context) =>
            const EventsPage(title: "events", ),
            // GoalPage.id: (context) =>
            // const GoalPage(title: "events", ),

          },
        );
      },
    );
  }

  String _getScreenType(double width) {
    if (width >= 1001) {
      return 'Desktop';
    } else if (width >= 451) {
      return 'Tablet';
    } else {
      return 'Mobile';
    }
  }
}
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text("Loading..."),
          ],
        ),
      ),
    );
  }
}

