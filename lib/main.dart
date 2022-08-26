import 'package:flutter/material.dart';
import 'package:flutter_login_signup_ui/screens/register_page.dart';
import 'package:flutter_login_signup_ui/screens/screen.dart';
import 'package:flutter_login_signup_ui/screens/welcome_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Sign In Sign Up Ui',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        scaffoldBackgroundColor: kBackgroundColor,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: WelcomePage.routeName,
      routes: {
        RegisterPage.routeName: (context) => RegisterPage(),
        SignInPage.routeName: (context) => SignInPage(),
        WelcomePage.routeName: (context) => WelcomePage(),
      },
    );
  }
}