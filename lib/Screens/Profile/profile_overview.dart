import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/Screens/Profile/my_profile.dart';
import 'package:task/Screens/Profile/my_team.dart';
import 'package:task/Values/values.dart';
import 'package:task/widgets/Buttons/primary_progress_button.dart';
import 'package:task/widgets/Buttons/progress_card_close_button.dart';
import 'package:task/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:task/widgets/Profile/badged_container.dart';
import 'package:task/widgets/Profile/text_outlined_button.dart';
import 'package:task/widgets/container_label.dart';
import 'package:task/widgets/dummy/profile_dummy.dart';

import 'profile_notification_settings.dart';

class ProfileOverview extends StatelessWidget {
  const ProfileOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      DarkRadialBackground(
        color: HexColor.fromHex("#181a1f"),
        position: "topLeft",
      ),
      Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: SafeArea(
              child: SingleChildScrollView(
                  child: Column(children: [
            Align(
              alignment: Alignment.center,
              child: ProfileDummy(
                  color: HexColor.fromHex("94F0F1"),
                  dummyType: ProfileDummyType.Image,
                  scale: 3.0,
                  image: "assets/man-head.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Ram",
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
            ),
            Text("phpproject1305@email.com",
                style: GoogleFonts.lato(
                    color: HexColor.fromHex("B0FFE1"), fontSize: 17)),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: OutlinedButtonWithText(
                width: 150,
                content: "View Profile",
                onPressed: () {
                  Get.to(() => ProfilePage());
                },
              ),
            ),
            AppSpaces.verticalSpace20,
            ContainerLabel(label: "Workspace"),
            AppSpaces.verticalSpace10,
            Container(
              width: double.infinity,
              height: 90,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: AppColors.primaryBackgroundColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProfileDummy(
                              color: HexColor.fromHex("94F0F1"),
                              dummyType: ProfileDummyType.Image,
                              scale: 1.20,
                              image: "assets/man-head.png"),
                          AppSpaces.horizontalSpace20,
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("ramram105",
                                    style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 5),
                                Text("ram1305.com",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.bold,
                                        color: HexColor.fromHex("5E6272")))
                              ])
                        ]),
                    PrimaryProgressButton(
                      width: 90,
                      height: 40,
                      label: "Invite",
                      textStyle: GoogleFonts.lato(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ]),
            ),
            AppSpaces.verticalSpace20,
            ContainerLabel(label: "Notification"),
            AppSpaces.verticalSpace10,
            BadgedContainer(
              label: "Do not disturb",
              callback: () {
                Get.to(() => ProfileNotificationSettings());
              },
              value: "Off",
              badgeColor: "FDA5FF",
            ),
            AppSpaces.verticalSpace20,
            ContainerLabel(label: "Manage"),
            AppSpaces.verticalSpace10,
                    Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: BadgedContainer(
                            label: "Team",
                            value: "7",
                            badgeColor: "FDA5FF",
                            callback: () {
                              Get.to(() => MyTeams());
                            },
                          ),
                        ),
                        // Add more widgets here if needed
                      ],
                    ),

                    AppSpaces.verticalSpace20,
            Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: HexColor.fromHex("FF968E"),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text("Log Out",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ))
          ])))),
      Positioned(
          top: 50,
          left: 20,
          child: Transform.scale(
              scale: 1.2,
              child: ProgressCardCloseButton(onPressed: () {
                Get.back();
              })))
    ]));
  }
}
