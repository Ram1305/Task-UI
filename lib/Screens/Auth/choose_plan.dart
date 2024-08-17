import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:task/Screens/Dashboard/timeline.dart';
import 'package:task/Values/values.dart';
import 'package:task/widgets/Buttons/primary_progress_button.dart';
import 'package:task/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:task/widgets/Navigation/default_back.dart';
import 'package:task/widgets/Onboarding/plan_card.dart';
import 'package:task/widgets/Onboarding/toggle_option.dart';

class ChoosePlan extends StatelessWidget {
  ChoosePlan({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> _multiUserTrigger = ValueNotifier(false);
    ValueNotifier<bool> _customLabelTrigger = ValueNotifier(false);
    ValueNotifier<int> _planContainerTrigger = ValueNotifier(0);

    return Scaffold(
      body: Stack(
        children: [
          DarkRadialBackground(
            color: Colors.red.shade900, // Red color for the background
            position: "topLeft",
          ),
          Column(
            children: [
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: DefaultNav(title: "New WorkSpace"),
              ),
              AppSpaces.verticalSpace20,
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100, // Light blue background
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.black, // Light black inner background
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppSpaces.verticalSpace10,
                            Text('Choose Plan', style: GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue.shade800)),
                            AppSpaces.verticalSpace10,
                            Text(
                              'Unlock all features with Premium Plan',
                              style: GoogleFonts.lato(
                                fontSize: 14,
                                color: Colors.grey.shade700, // Grey text color
                              ),
                            ),
                            AppSpaces.verticalSpace20,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                PlanCard(
                                  notifierValue: _planContainerTrigger,
                                  selectedIndex: 0,
                                  header: "It's Free",
                                  subHeader: "For team\nfrom 1 - 5",
                                  // cardColor: Colors.white, // White card background
                                  // headerColor: Colors.red.shade600, // Red header color
                                ),
                                AppSpaces.horizontalSpace20,
                                PlanCard(
                                  notifierValue: _planContainerTrigger,
                                  selectedIndex: 1,
                                  header: "Premium",
                                  subHeader: "\$19/mo",
                                  // cardColor: Colors.white, // White card background
                                  // headerColor: Colors.blue.shade600, // Blue header color
                                )
                              ],
                            ),
                            AppSpaces.verticalSpace20,
                            Text('Enable Features', style: GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black)),
                            AppSpaces.verticalSpace10,
                            Container(
                              width: Utils.screenWidth * 0.8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'You can customize the features in your workspace now ',
                                      style: GoogleFonts.lato(fontSize: 14, color: Colors.grey.shade700), // Grey text color
                                      children: <TextSpan>[],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            AppSpaces.verticalSpace20,
                            ToggleLabelOption(
                              label: '    Multiple Assignees',
                              notifierValue: _multiUserTrigger,
                              icon: Icons.groups,
                              // labelColor: Colors.black.shade600, // black label color
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 10,
            child: Container(
              padding: EdgeInsets.only(left: 40, right: 20),
              width: Utils.screenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryProgressButton(
                    width: 100,
                    label: "Done",
                    // buttonColor: Colors.blue.shade600, // Blue button color
                    // labelColor: Colors.white, // White label color
                    callback: () {
                      Get.to(() => Timeline());
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
