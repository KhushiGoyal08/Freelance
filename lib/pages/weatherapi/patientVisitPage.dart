import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientVisitPage extends StatelessWidget {
  const PatientVisitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.5),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            left: 16,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                height: 25,
                width: 25,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.close_rounded,
                  color: Colors.redAccent,
                  size: 16,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.12,
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Image(
                    image: AssetImage('assets/image 380.png'),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jane Smith',
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.white),
                    ),
                    Text(
                      'PT',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            left: 16,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration:const  BoxDecoration(color: Colors.white),
                child: DefaultTabController(
                    length: 2,
                    child: Scaffold(
                      body: Column(
                        children: [
                          TabBar(
                            labelColor: const Color.fromRGBO(64, 160, 188, 1),
                      labelStyle: GoogleFonts.poppins(),
                              indicatorColor: const Color.fromRGBO(64, 160, 188, 1),
                              tabs: const [
                            Tab(
                              text: 'Patient Visits',
                            ),
                            Tab(
                              text: 'To be decided',
                            ),
                          ]),
                          Expanded(
                              child: TabBarView(
                            children: [
                            Column(
                              children: [
                                ListTile(
                                leading: const Image(image: AssetImage('assets/Todays Visit.png'),),
                                  title: Text(
                                    'Todays Visit',
                                    style: GoogleFonts.poppins(),
                                  ),
                                  trailing: Text('(10)',
                                    style: GoogleFonts.poppins(
                                      // fontWeight:FontWeight.bold,
                                      fontSize:14
                                    ),),
                                ),
                                ListTile(
                                  leading: const Image(image: AssetImage('assets/Completed Visits.png'),),
                                  title: Text(
                                    'Completed Visits',
                                    style: GoogleFonts.poppins(),
                                  ),
                                  trailing: Text('(10)',
                                    style: GoogleFonts.poppins(
                                      // fontWeight:FontWeight.bold,
                                        fontSize:14
                                    ),),
                                ),
                                ListTile(
                                  leading: const Image(image: AssetImage('assets/Open Charts.png'),),
                                  title: Text(
                                    'Open Charts',
                                    style: GoogleFonts.poppins(),
                                  ),
                                  trailing: Text('(10)',
                                    style: GoogleFonts.poppins(
                                      // fontWeight:FontWeight.bold,
                                        fontSize:14
                                    ),),
                                ),
                               const  Divider(color: Color.fromRGBO(235, 238, 242, 1)),
                                // Text('Want help prior to your visit?',
                                //   style: GoogleFonts.poppins(
                                //     // fontWeight:FontWeight.bold,
                                //       fontSize:12
                                //   ),),
                              ],
                            ),
                              Center(
                                child: Text('Content for tab 2'),
                              )

                            ],
                          ))
                        ],
                      ),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
