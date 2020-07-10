import 'package:flutter/material.dart';
import 'package:form_valid/src/bloc/provider.dart';
import 'package:form_valid/src/pages/home_page.dart';
import 'package:form_valid/src/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        
        debugShowCheckedModeBanner: false,
        title: 'Validate',
        initialRoute: 'login',
        routes: {
          'login': (BuildContext context) => LoginPage(),
          'home': (BuildContext context) => HomePage(),
        },
        theme: ThemeData(
          primaryColor: Colors.deepPurple
        ),
      ),
    );
  }
}
