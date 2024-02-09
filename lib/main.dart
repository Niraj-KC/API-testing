import 'package:api_testing/CodeforcesAPI/CFAPIs.dart';
import 'package:api_testing/CodeforcesAPI/CodeForcesURLs.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'LeetCodeAPIs/LCURIs.dart';

//flutter run -d chrome --web-browser-flag "--disable-web-security"

void main() async {
  // CFAPIs.getUserProfile("Psychotic_D");
  // CFAPIs.fetchData(CodeForcesURLs.getContestURL(1922, false, 1, 10));
  CFAPIs.temp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LC(),
    );
  }
}
