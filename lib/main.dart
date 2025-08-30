import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:linqup_mobile_application/providers/state_manager/make_and_search_state.dart';
import 'package:linqup_mobile_application/providers/state_manager/navigation_menu_state.dart';
import 'package:linqup_mobile_application/screen/home_screen.dart';
import 'package:linqup_mobile_application/screen/interest_screen.dart';
import 'package:linqup_mobile_application/screen/login_screen.dart';
import 'package:linqup_mobile_application/screen/onboard_screen.dart';
import 'package:linqup_mobile_application/screen/sign_up_screen.dart';
import 'package:provider/provider.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: const Color(0xFF4B164C),
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontFamily: 'Poppins',
    ),
    bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Poppins'),
    bodySmall: TextStyle(fontSize: 12.0, fontFamily: 'Poppins'),
  ),
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) => runApp(
        MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => MakeAndSearchStateNav()),
            ChangeNotifierProvider(create: (_) => NavigationMenuState()),
          ],
          child: const MainApp(),
        ),
      ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const Scaffold(
        body: OnboardPage(),
      ),
      routes: {
        '/continue_with': (context) => const Login(),
        '/sign-up': (context) => const SignUp(),
        '/interest': (context) => const InterestScreen(),
        '/homepage': (context) => const Homepage(),
      },
    );
  }
}
