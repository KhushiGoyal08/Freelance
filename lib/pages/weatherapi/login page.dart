import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromRGBO(243, 246, 252, 1),
        body:Row(

          children: [
            const Image(image: AssetImage('assets/doctorlogin.png'),),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.2,
                      left: MediaQuery.of(context).size.width * 0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: const AssetImage('assets/signlogin.png'),
                              width: MediaQuery.of(context).size.width * 0.1),
                          Image(
                            image: const AssetImage('assets/automynd.png'),
                            width: MediaQuery.of(context).size.width * 0.4,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.05,),

                    Center(
                      child: Text(
                        'Welcome',
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                   const  SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        SizedBox(height:2 , width:MediaQuery.of(context).size.width*0.05,child: Container(color: Colors.black54,),),
                        Text(
                          'Log in to AutoMynd',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(70, 166, 192, 1)),
                        ),
                        SizedBox(height:2 , width:MediaQuery.of(context).size.width*0.05,child: Container(color: Colors.black54,),),
                      ],
                    ),
                  const   SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Work Email Address',
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(80, 84, 93, 1)),
                    ),
                  const   SizedBox(
                      height: 20,
                    ),
                    TextFormField(

                      decoration: const InputDecoration(
                          hintText: 'Enter your work email..',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                  const   SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Password',
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(80, 84, 93, 1)),
                    ),
                 const   SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Icon(
                              Icons.remove_red_eye,
                              color: Color.fromRGBO(70, 166, 192, 1),
                            ),
                          ),
                        ),
                        hintText: 'Enter your password..',
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  const  SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        GestureDetector(
                          child: Text(
                            'Forgot your password?',
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(80, 84, 93, 1)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          backgroundColor: const Color.fromRGBO(77, 85, 112, 1),
                          minimumSize: const Size.fromHeight(50),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: GoogleFonts.poppins(color: Colors.white),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
