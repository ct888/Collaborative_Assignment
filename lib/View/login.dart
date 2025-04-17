import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seek_here/View/utils/button_widget.dart';
import 'package:seek_here/View/utils/logo_widget.dart';
import 'package:seek_here/View/utils/input_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seek_here/Model/appimages.dart';
import 'package:seek_here/View/utils/wh_getter.dart';
import 'package:seek_here/View/utils/customcolors.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    // Screen Width & Height

    double w = WHGetter.width(context);
    double h = WHGetter.height(context);

    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              // White background
              Container(width: w, height: h, color: CustomColors.white),

              // Vector background image
              Positioned(
                left: 0,
                top: 0,
                child: SvgPicture.asset(AppImages.bgLogin),
              ),

              // Main Content
              Positioned.fill(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Logo
                    Padding(
                      padding: EdgeInsets.only(top: WHGetter.sy(context, 50)),
                      child: LogoWidget(),
                    ),

                    // Welcome Back Text
                    Padding(
                      padding: EdgeInsets.only(top: 60),
                      child: Text(
                        "Welcome Back\u0021",
                        style: GoogleFonts.aDLaMDisplay(
                          fontSize: 28,
                          height: 1.35,
                          color: CustomColors.grayDark,
                        ),
                      ),
                    ),

                    // LogIn Title
                    Text(
                      "LOG IN WITH EMAIL".toUpperCase(),
                      style: GoogleFonts.aDLaMDisplay(
                        fontSize: 14,
                        height: 1.08,
                        letterSpacing: 14 * 0.05,
                      ),
                    ),

                    // Input Field
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: [
                    //     // Email Input
                    //     Padding(
                    //       padding: EdgeInsets.only(top: 10),
                    //       child: TextInput(
                    //         label: "Email",
                    //         width: WHGetter.sx(context, 374),
                    //         height: WHGetter.sy(context, 60),
                    //       ),
                    //     ),

                    //     // Password Input
                    //     Padding(
                    //       padding: EdgeInsets.only(top: 10),
                    //       child: TextInput(
                    //         label: "Password",
                    //         width: WHGetter.sx(context, 374),
                    //         height: WHGetter.sy(context, 60),
                    //       ),
                    //     ),
                    //   ],
                    // ),

                    // Login Button
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: ButtonWidget(
                        label: "Log In",
                        onPressed: () {
                          //TODO
                        },
                        color: CustomColors.blue,
                        width: WHGetter.sx(context, 374),
                        height: WHGetter.sy(context, 60),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

 //   home: Column(
    //     children: [
    //       Container(
    //         width: w,
    //         height: h,
    //         clipBehavior: Clip.antiAlias,
    //         decoration: BoxDecoration(color: CustomColors.blue),
    //         child: Stack(
    //           children: [
    //             Positioned(
    //               left: 0,
    //               top: 0,
    //               child: Container( // Background
    //                 width: w,
    //                 height: h,
    //                 clipBehavior: Clip.antiAlias,
    //                 decoration: BoxDecoration(
    //                   // Background
    //                   color: CustomColors.white,
    //                 ),
    //               ),
    //             ),
    //             Positioned( // Forget Password
    //               left: w / 2,
    //               top: 524.77,
    //               child: SizedBox(
    //                 width: 134,
    //                 height: 14,
    //                 child: Text(
    //                   'Forgot Password?',
    //                   style: TextStyle(
    //                     color: const Color(0xFF3F414E),
    //                     fontSize: 14,
    //                     fontFamily: 'ADLaM Display',
    //                     fontWeight: FontWeight.w400,
    //                     height: 1.08,
    //                     letterSpacing: 0.70,
    //                   ),
    //                 ),
    //               ),
    //             ),
    //             Positioned( // Log In Button
    //               left: 20,
    //               top: 448,
    //               child: Container(
    //                 width: 374,
    //                 height: 62,
    //                 clipBehavior: Clip.antiAlias,
    //                 decoration: BoxDecoration(
    //                   color: Colors.white.withValues(alpha: 0),
    //                 ),
    //                 child: Stack(
    //                   children: [
    //                     Positioned(
    //                       left: 0,
    //                       top: -1,
    //                       child: Container(
    //                         width: 374,
    //                         height: 63,
    //                         decoration: ShapeDecoration(
    //                           color: CustomColors.blue,
    //                           shape: RoundedRectangleBorder(
    //                             borderRadius: BorderRadius.circular(38),
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                     Positioned(
    //                       left: 162,
    //                       top: 22,
    //                       child: Text(
    //                         'Log In',
    //                         textAlign: TextAlign.center,
    //                         style: TextStyle(
    //                           color: const Color(0xFF3F414E) /* Gray-Dark */,
    //                           fontSize: 16,
    //                           fontFamily: 'ADLaM Display',
    //                           fontWeight: FontWeight.w400,
    //                           height: 1.08,
    //                           letterSpacing: 0.80,
    //                         ),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //             Positioned(
    //               left: 20,
    //               top: 266,
    //               child: Container(
    //                 width: 374,
    //                 height: 63,
    //                 clipBehavior: Clip.antiAlias,
    //                 decoration: BoxDecoration(
    //                   color: Colors.white.withValues(alpha: 0),
    //                 ),
    //                 child: Stack(
    //                   children: [
    //                     Positioned(
    //                       left: 0,
    //                       top: 0,
    //                       child: Container(
    //                         width: 374,
    //                         height: 63,
    //                         decoration: ShapeDecoration(
    //                           color: const Color(0xFFF2F3F7),
    //                           shape: RoundedRectangleBorder(
    //                             borderRadius: BorderRadius.circular(15),
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                     Positioned(
    //                       left: 20,
    //                       top: 22.23,
    //                       child: SizedBox(
    //                         width: 120,
    //                         height: 18,
    //                         child: Text(
    //                           'Email',
    //                           style: TextStyle(
    //                             color: const Color(0xFFA1A4B2) /* Gray-Mid */,
    //                             fontSize: 16,
    //                             fontFamily: 'ADLaM Display',
    //                             fontWeight: FontWeight.w400,
    //                             height: 1.08,
    //                             letterSpacing: 0.80,
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //             Positioned(
    //               left: 20,
    //               top: 342,
    //               child: Container(
    //                 width: 374,
    //                 height: 63,
    //                 clipBehavior: Clip.antiAlias,
    //                 decoration: BoxDecoration(
    //                   color: Colors.white.withValues(alpha: 0),
    //                 ),
    //                 child: Stack(
    //                   children: [
    //                     Positioned(
    //                       left: 0,
    //                       top: 0,
    //                       child: Container(
    //                         width: 374,
    //                         height: 63,
    //                         decoration: ShapeDecoration(
    //                           color: const Color(0xFFF2F3F7),
    //                           shape: RoundedRectangleBorder(
    //                             borderRadius: BorderRadius.circular(15),
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                     Positioned(
    //                       left: 20,
    //                       top: 22.23,
    //                       child: SizedBox(
    //                         width: 120,
    //                         height: 18,
    //                         child: Text(
    //                           'Password',
    //                           style: TextStyle(
    //                             color: const Color(0xFFA1A4B2) /* Gray-Mid */,
    //                             fontSize: 16,
    //                             fontFamily: 'ADLaM Display',
    //                             fontWeight: FontWeight.w400,
    //                             height: 1.08,
    //                             letterSpacing: 0.80,
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //             Positioned(
    //               left: 132,
    //               top: 236,
    //               child: SizedBox(
    //                 width: 149,
    //                 height: 15,
    //                 child: Text(
    //                   'LOG IN WITH EMAIL',
    //                   style: TextStyle(
    //                     color: const Color(0xFF3F414E) /* Gray-Dark */,
    //                     fontSize: 14,
    //                     fontFamily: 'ADLaM Display',
    //                     fontWeight: FontWeight.w400,
    //                     height: 1.08,
    //                     letterSpacing: 0.70,
    //                   ),
    //                 ),
    //               ),
    //             ),
    //             Positioned(
    //               left: 110,
    //               top: 144.77,
    //               child: Text(
    //                 'Welcome Back!',
    //                 style: TextStyle(
    //                   color: const Color(0xFF3F414E) /* Gray-Dark */,
    //                   fontSize: 28,
    //                   fontFamily: 'ADLaM Display',
    //                   fontWeight: FontWeight.w400,
    //                   height: 1.35,
    //                 ),
    //               ),
    //             ),
    //             Positioned(
    //               left: 133,
    //               top: 50,
    //               child: Container(
    //                 width: 148,
    //                 height: 30,
    //                 clipBehavior: Clip.antiAlias,
    //                 decoration: BoxDecoration(
    //                   color: Colors.white.withValues(alpha: 0),
    //                 ),
    //                 child: Stack(
    //                   children: [
    //                     Positioned(
    //                       left: 100,
    //                       top: 5,
    //                       child: Text(
    //                         'Here',
    //                         style: TextStyle(
    //                           color: const Color(0xFF3F414E) /* Gray-Dark */,
    //                           fontSize: 16,
    //                           fontFamily: 'ADLaM Display',
    //                           fontWeight: FontWeight.w400,
    //                           letterSpacing: 3.84,
    //                         ),
    //                       ),
    //                     ),
    //                     Positioned(
    //                       left: 59,
    //                       top: 0,
    //                       child: Container(
    //                         width: 30,
    //                         height: 30,
    //                         clipBehavior: Clip.antiAlias,
    //                         decoration: BoxDecoration(),
    //                         child: Stack(
    //                           children: [
    //                             Positioned(
    //                               left: 17,
    //                               top: 6,
    //                               child: Container(
    //                                 width: 4,
    //                                 height: 4,
    //                                 decoration: ShapeDecoration(
    //                                   color: const Color(0xFFD6D9FF),
    //                                   shape: OvalBorder(),
    //                                 ),
    //                               ),
    //                             ),
    //                           ],
    //                         ),
    //                       ),
    //                     ),
    //                     Positioned(
    //                       left: 0,
    //                       top: 5,
    //                       child: Text(
    //                         'Seek',
    //                         style: TextStyle(
    //                           color: const Color(0xFF3F414E) /* Gray-Dark */,
    //                           fontSize: 16,
    //                           fontFamily: 'ADLaM Display',
    //                           fontWeight: FontWeight.w400,
    //                           letterSpacing: 3.84,
    //                         ),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  
