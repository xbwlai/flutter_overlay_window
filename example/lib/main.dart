import 'package:flutter/material.dart';
import 'package:flutter_overlay_window_example/home_page.dart';
import 'package:flutter_overlay_window_example/overlays/clickable_overlay.dart';
import 'package:flutter_overlay_window_example/overlays/true_caller_overlay.dart';

void main() {
  runApp(const MyApp());
}

@pragma("vm:entry-point")
void overlayMain() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TrueCallerOverlay(), //ClickableOverlay()
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}