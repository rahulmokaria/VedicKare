import 'package:flutter/material.dart';
import 'package:vedic_kare/pages/doctor_home_page.dart';
import 'package:vedic_kare/pages/forgot_password_page.dart';
import 'package:vedic_kare/pages/login_page.dart';
import 'package:vedic_kare/pages/patient_home_page.dart';
import 'package:vedic_kare/pages/register_page.dart';

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
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: 'homePage',
        routes: {
          'loginPage': (context) => const LoginPage(),
          'registerPage': (context) => const RegisterPage(),
          'doctorHomePage': (context) => const DoctorHomePage(),
          'patientHomePage': (context) => const PatientHomePage(),
          'forgotPasswordPage': (context) => const ForgotPasswordPage(),
        });
  }
}
