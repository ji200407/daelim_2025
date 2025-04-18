import 'package:daelim_2025/app/router/app_router.dart';
import 'package:daelim_2025/presentaion/example/example_screen.dart';
import 'package:daelim_2025/presentaion/start/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false, //디버그 베너 삭제
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      themeMode: ThemeMode.light, //다크 모드 ,라이트 모드
      routerConfig: router,
    );
  }
}
