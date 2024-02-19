import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/weatherController.dart';

class MyWeatherApp extends StatelessWidget {
  final WeatherController weatherController = Get.put(WeatherController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GetBuilder<WeatherController>(
            builder: (controller) {
              return Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.35),
                child: Column(
                  children: [
                    if (controller.isLoading.value) const  CircularProgressIndicator(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const  Image(image: AssetImage('assets/cloud_sun.png'),),
                        Column(
                          children: [
                            Text(
                              '${controller.temperature.value}°C',
                              style: GoogleFonts.poppins(fontSize: 24),
                            ),
                            Text(
                              ' ${controller.description.value}',
                              style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  color: const Color.fromRGBO(80, 84, 93, 1)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
