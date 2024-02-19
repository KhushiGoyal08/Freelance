import 'package:flutter/material.dart';
import 'package:freelance/pages/weatherapi/weatherpage.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controller/weatherController.dart';

class MyController extends GetxController {
  RxInt selectedRadio = 0.obs; // Observable for selected radio button

  // Function to show the bottom modal sheet
  void showBottomSheet() {
    Get.bottomSheet(
      Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(1),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Obx(
              () => Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // Radio buttons
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 6, left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Select the template type',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        Stack(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: const Icon(
                                  Icons.clear_outlined,
                                  color: Colors.redAccent,
                                  size: 16,
                                )),
                            Positioned(
                              top: 10,
                              right: 9,
                              child: Container(
                                width: 22,
                                height: 22,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black54,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black54, // Border color
                        width: 2.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8
                      ),
                      child: Row(
                        children: [
                          Text(
                            'SOAP',
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                          const   Spacer(),
                          Radio(
                            activeColor: const Color.fromRGBO(77, 85, 112, 1),
                            value: 0,
                            groupValue: selectedRadio.value,
                            onChanged: (value) {
                              selectedRadio.value = value!;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black54, // Border color
                          width: 2.0, // Border width
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Follow Up/ TX',
                              style: GoogleFonts.poppins(fontSize: 12),
                            ),
                            const   Spacer(),
                            Radio(
                              activeColor: const Color.fromRGBO(77, 85, 112, 1),
                              value: 1,
                              groupValue: selectedRadio.value,
                              onChanged: (value) {
                                selectedRadio.value = value!;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black54,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8
                      ),
                      child: Row(
                        children: [
                          Text(
                            'TBD',
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                        const   Spacer(),
                          Radio(
                            activeColor: const Color.fromRGBO(77, 85, 112, 1),
                            value: 2,
                            groupValue: selectedRadio.value,
                            onChanged: (value) {
                              selectedRadio.value = value!;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const  SizedBox(
                     height: 10,
                   ),

                  // Elevated buttons
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(77, 85, 112, 1),
                        minimumSize: const Size.fromHeight(40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      // Handle the action for the first button
                      Get.back(); // Close the modal sheet
                    },
                    child: const Text(
                      'Create',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const    SizedBox(
                       height: 10,
                     ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black54, // Border color
                        width: 2.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: const Size.fromHeight(40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text(
                        'Close',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyBottomSheet extends StatelessWidget {
  final MyController myController = Get.put(MyController());
  final WeatherController weatherController = Get.put(WeatherController());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  myController.showBottomSheet();
                },
                child: const Text('Show Bottom Modal Sheet'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                weatherController.fetchWeather('Bihar');
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyWeatherApp()));
              },
              child: Text('Get Weather'),
            ),
          ],
        ),
      ),
    );
  }
}
