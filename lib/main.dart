import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:freelance/pages/weatherapi/weatherpage.dart';
import 'package:get/get.dart';
import 'pages/weatherapi/bottommodelsheet.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyBottomSheet(),
    );
  }
}
