import 'package:flutter/material.dart';
import 'package:swift_resume_builder/service/constant/colors.dart';
import 'package:swift_resume_builder/service/constant/dimensions.dart';
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

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [topBar()],
      ),
    );
  }

  Center topBar() {
    return Center(
      child: Container(
        height: 60,
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
          color: AppColors.orangeBrown,
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
