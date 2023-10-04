import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tikitok/constants/sizes.dart';
import 'package:tikitok/features/authentication/email_screen.dart';
import 'package:tikitok/features/authentication/login_screen.dart';
import 'package:tikitok/features/authentication/sign_up_screen.dart';
import 'package:tikitok/features/authentication/username_screen.dart';
import 'package:tikitok/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  );

  runApp(const TikiTokApp());
}

class TikiTokApp extends StatelessWidget {
  const TikiTokApp({super.key});

  @override
  Widget build(BuildContext context) {
    // S.load(const Locale('en'));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tikitok',
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ko'),
      ],
      themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: Typography.blackMountainView,
        brightness: Brightness.light,
        primaryColor: const Color(0xFFE9435A),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xFFE9435A),
        ),
        splashColor: Colors.transparent,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: Sizes.size16 + Sizes.size2,
            fontWeight: FontWeight.w600,
          ),
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey.shade500,
          indicatorColor: Colors.black,
        ),
        listTileTheme: const ListTileThemeData(
          iconColor: Colors.black,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        tabBarTheme: TabBarTheme(
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey.shade700,
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xFFE9435A),
        ),
        textTheme: Typography.whiteMountainView,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          surfaceTintColor: Colors.grey.shade900,
          backgroundColor: Colors.grey.shade900,
          foregroundColor: Colors.white,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: Sizes.size18,
            fontWeight: FontWeight.w600,
          ),
          actionsIconTheme: IconThemeData(
            color: Colors.grey.shade100,
          ),
          iconTheme: IconThemeData(
            color: Colors.grey.shade100,
          ),
        ),
        bottomAppBarTheme: BottomAppBarTheme(
          color: Colors.grey.shade900,
        ),
        primaryColor: const Color(0xFFE9435A),
      ),
      initialRoute: SignUpScreen.routeName,
      routes: {
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        UsernameScreen.routeName: (context) => const UsernameScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        EmailScreen.routeName: (context) => const EmailScreen(),
      },
    );
  }
}
