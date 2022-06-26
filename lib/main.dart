import 'package:flutter/material.dart';

import 'pages/doctor_home_page.dart';
import 'pages/forgot_password_page.dart';
import 'pages/login_page.dart';
import 'pages/patient_home_page.dart';
import 'pages/register_page.dart';
import 'theme/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'VedicKare',
         themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
        initialRoute: 'doctorHomePage',
        routes: {
          'loginPage': (context) => const LoginPage(),
          'registerPage': (context) => const RegisterPage(),
          'doctorHomePage': (context) => const DoctorHomePage(),
          'patientHomePage': (context) => const PatientHomePage(),
          'forgotPasswordPage': (context) => const ForgotPasswordPage(),
        });
  }
}
