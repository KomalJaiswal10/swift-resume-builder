import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:swift_resume_builder/service/constant/colors.dart';
import 'package:swift_resume_builder/service/constant/dimensions.dart';
import 'package:swift_resume_builder/view/src/sample_templates/resume_one.dart';
import 'package:swift_resume_builder/view/widgets/buttons.dart';
import 'package:swift_resume_builder/view/widgets/extensions.dart';
import 'package:swift_resume_builder/view/widgets/texts.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

bool isHover = false;
List<String> tabs = ['Builder', 'Resumes', 'Cover Letters', 'CVs', 'Resources'];
List<Color> colors = [
  const Color(0xff0C6BA1),
  AppColors.secondaryBlue,
  Colors.blueGrey,
  Colors.teal
];

int index = 0;
late final Timer timer;

class _HomeTabState extends State<HomeTab> {
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        index = (index + 1) % colors.length;
      });
    });
    //widget.image.shuffle();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            topBar(),
            Stack(children: [
              ClipPath(
                clipper: WaveClipperTwo(reverse: false, flip: true),
                child: Container(
                  height: 700,
                  color: AppColors.whiteBg,
                ),
              ),
              Center(
                child: Container(
                  width: AppDimensions.maxWidthSize,
                  height: 650,
                  // color: Colors.yellow,
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText().smallBoldBody(
                              text: 'YOUR PATH TO PROFESSIONAL EXCELENCE',
                              color: const Color(0xff808080)),
                          20.heigth,
                          CustomText().largeBoldBody(
                            text: 'Design  Resumes',
                            color: AppColors.titleBlack,
                          ),
                          10.heigth,
                          CustomText().largeBoldBody(
                            text: 'That  Make  An',
                            color: AppColors.titleBlack,
                          ),
                          10.heigth,
                          CustomText().largeBoldBody(
                            text: 'Impact',
                            color: AppColors.primaryBlue,
                          ),
                          20.heigth,
                          CustomText().mediumBody(
                              text:
                                  'Start crafting your success story – Swift, Stylish, and Successful!',
                              color: const Color(0xff808080)),
                          4.heigth,
                          CustomText().mediumBody(
                              text:
                                  'Get started today and unlock the door to your next great opportunity.',
                              color: const Color(0xff808080)),
                          50.heigth,
                          const CustomButtons(
                            text: 'BUILD  MY  RESUME',
                          )
                        ],
                      ),
                      FittedBox(
                        fit: BoxFit.contain,
                        child: SizedBox(
                          height: 551,
                          width: 420,
                          child: ResumeOne(color: colors[index]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }

  Center topBar() {
    return Center(
      child: Container(
        height: 65,
        width: AppDimensions.maxWidthSize,
        padding: const EdgeInsets.symmetric(horizontal: 50),
        color: AppColors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            logoText(),
            Row(
              children: [
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: tabs.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        MouseRegion(
                          onEnter: (_) => setState(() => isHover = true),
                          onExit: (_) => setState(() => isHover = false),
                          child: GestureDetector(
                            onTap: () {},
                            child: CustomText().mediumBoldBody(
                                text: tabs[index],
                                color: isHover
                                    ? const Color(0xff333333)
                                    : const Color(0xff808080)),
                          ),
                        ),
                        30.width,
                      ],
                    );
                  },
                ),
                30.width,
                CustomText()
                    .buttonText(text: 'LOGIN', color: AppColors.secondaryBlue)
                // const CustomButtons()
              ],
            )
          ],
        ),
      ),
    );
  }

  Text logoText() {
    return const Text.rich(
        style: TextStyle(
          color: AppColors.jetBlack,
          fontSize: 24,
          fontWeight: FontWeight.w900,
        ), //style for all textspan
        TextSpan(children: [
          TextSpan(
              text: "S",
              style: TextStyle(
                fontFamily: 'Salsa',
              )),
          TextSpan(
              text: "wift",
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          TextSpan(
              text: "ResumeBuilder",
              style: TextStyle(
                fontFamily: 'Salsa',
              )),
        ]));
  }
}
