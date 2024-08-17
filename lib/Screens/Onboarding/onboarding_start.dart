import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/Screens/Onboarding/onboarding_carousel.dart';
import 'package:task/Values/values.dart';
import 'package:task/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:task/widgets/Onboarding/background_image.dart';
import 'package:task/widgets/Onboarding/bubble.dart';
import 'package:task/widgets/Onboarding/loading_stickers.dart';
import 'dart:math' as math;

import 'package:task/widgets/Shapes/background_hexagon.dart';

class OnboardingStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        DarkRadialBackground(
          color: HexColor.fromHex("#003366"), // Dark Blue
          position: "topLeft",
        ),

        Positioned(
            top: Utils.screenHeight,
            left: 0,
            child: Transform.rotate(angle: -math.pi / 2, child: CustomPaint(painter: BackgroundHexagon()))),
        //images
        Positioned(
            top: Utils.screenHeight * 0.7,
            right: 100,
            child: BackgroundImage(
                scale: 1.0,
                image: "assets/icon/logo.png",
                gradient: [HexColor.fromHex("#ADD8E6"), HexColor.fromHex("#ADD8E6")])), // Light Blue

        Positioned(
            top: Utils.screenHeight * 0.50,
            left: Utils.screenWidth * 0.12,
            child: BackgroundImage(
                scale: 0.5,
                image: "assets/icon/logo.png",
                gradient: [HexColor.fromHex("#1E90FF"), HexColor.fromHex("#87CEFA")])), // Primary Blue, Light Blue

        Positioned(
            top: Utils.screenHeight * 0.30,
            right: 70,
            child: BackgroundImage(
                scale: 0.4,
                image: "assets/icon/logo.png",
                gradient: [HexColor.fromHex("#1E90FF"), HexColor.fromHex("#87CEFA")])), // Primary Blue, Light Blue

        //end of images

        //Bubble
        Positioned(top: 80, left: 50, child: Bubble(1.0, HexColor.fromHex("#1E90FF"))), // Primary Blue

        Positioned(top: 130, left: 130, child: Bubble(0.6, HexColor.fromHex("#87CEFA"))), // Light Blue
        //end bubble

        Positioned(
            top: Utils.screenHeight * 0.12,
            left: Utils.screenWidth * 0.45,
            child: LoadingSticker(
                gradients: [HexColor.fromHex("#ADD8E6"), HexColor.fromHex("#B0E0E6"), HexColor.fromHex("#1E90FF")])), // Light Blue, Primary Blue

        Positioned(
            top: Utils.screenHeight * 0.50,
            left: Utils.screenWidth * 0.22,
            child: LoadingSticker(gradients: [HexColor.fromHex("#87CEFA"), HexColor.fromHex("#1E90FF")])), // Light Blue, Primary Blue

        Positioned(
            top: Utils.screenHeight * 0.7,
            left: Utils.screenWidth * 0.6,
            child: LoadingSticker(gradients: [HexColor.fromHex("#87CEFA"), HexColor.fromHex("#1E90FF")])), // Light Blue, Primary Blue

        Positioned(
            top: Utils.screenHeight * 1.3,
            left: Utils.screenWidth * 0.83,
            child: Transform.rotate(
              angle: -math.pi / 4,
              child: InkWell(
                onTap: () {
                  Get.to(() => OnboardingCarousel());
                },
                child: Container(
                    width: 200,
                    height: 200,
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50.0), color: HexColor.fromHex("87CEFA")), // Light Blue
                    child: Transform.rotate(
                      angle: math.pi / 4,
                      child: Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(top: 80, left: 30),
                          child: Icon(Icons.arrow_forward, size: 40, color: HexColor.fromHex("#003366"))), // Dark Blue
                    )),
              ),
            )),

        Positioned(
            bottom: 150,
            left: 40,
            child: Container(
              width: 300,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Task Management ',
                        style: GoogleFonts.lato(fontSize: 18, color: HexColor.fromHex("87CEFA")), // Light Blue
                        children: <TextSpan>[
                          TextSpan(
                            text: '🙌',
                          ),
                        ],
                      ),
                    ),
                    Text('Lets create\na space\nfor your workflows.',
                        style: GoogleFonts.lato(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold)),
                    AppSpaces.verticalSpace20,
                    Container(
                      width: 180,
                      height: 60,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => OnboardingCarousel());
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(HexColor.fromHex("1E90FF")), // Primary Blue
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  side: BorderSide(color: HexColor.fromHex("1E90FF"))))), // Primary Blue
                          child: Center(
                              child: Text('Get Started', style: GoogleFonts.lato(fontSize: 20, color: Colors.white)))),
                    )
                  ]),
            ))
      ]),
    );
  }
}
