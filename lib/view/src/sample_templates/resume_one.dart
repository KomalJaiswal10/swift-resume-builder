import 'package:flutter/material.dart';
import 'package:swift_resume_builder/service/constant/colors.dart';
import 'package:swift_resume_builder/view/widgets/extensions.dart';
import 'package:swift_resume_builder/view/widgets/texts.dart';

class ResumeOne extends StatelessWidget {
  const ResumeOne({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    List<String> skills = [
      'Spring Boot',
      'Django',
      // 'Git',
      // 'Agile',
      'MySQL',
      'MongoDB'
    ];
    List<String> points = [
      'Collaborated with a team of developers to design and implement scalable and maintainable software solutions.',
      'Developed and maintained web applications using technologies such as Java, Spring Boot, and React.',
      'Participated in Agile development sprints, contributing to the continuous improvement of team processes.',
      'Assisted in the development of backend functionalities for a customer management system, resulting in a 20% improvement in system efficiency.',
      'Conducted code reviews and provided constructive feedback to team members.',
    ];

    return Scaffold(
      body: Center(
        child: Card(
          elevation: 5,
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    color: color.withOpacity(.15),
                    height: 70,
                  ),
                  Container(
                    width: 100,
                    // height: context.size!.height,
                    margin: const EdgeInsets.only(left: 25),
                    padding: const EdgeInsets.only(left: 10, top: 130),
                    color: color.withOpacity(.15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText().boldText(
                            style: context.textTheme.bodySmall!,
                            text: 'EDUCATION',
                            fontWeight: FontWeight.w900,
                            color: color),
                        10.heigth,
                        CustomText().boldText(
                            style: context.textTheme.bodySmall!,
                            text: 'Master Of Science',
                            fontWeight: FontWeight.bold,
                            color: AppColors.black),
                        3.heigth,
                        CustomText().normalText(
                            style: context.textTheme.labelSmall!,
                            text: 'Software Engineer',
                            color: AppColors.black),
                        5.heigth,
                        CustomText().boldText(
                            style: context.textTheme.bodySmall!,
                            text: 'Tech University, Cityville, State',
                            color: AppColors.black),
                        3.heigth,
                        CustomText().boldText(
                            style: context.textTheme.bodySmall!,
                            text: '2018  ',
                            color: AppColors.black),
                        20.heigth,
                        CustomText().boldText(
                            style: context.textTheme.bodySmall!,
                            text: 'LANGUAGES',
                            fontWeight: FontWeight.w900,
                            color: color),
                        10.heigth,
                        CustomText().boldText(
                            style: context.textTheme.bodySmall!,
                            text: 'English',
                            color: AppColors.black),
                        3.heigth,
                        Container(
                          height: 3,
                          width: 80,
                          color: color,
                        ),
                        10.heigth,
                        CustomText().boldText(
                            style: context.textTheme.bodySmall!,
                            text: 'Spanish',
                            color: AppColors.black),
                        3.heigth,
                        Container(
                          height: 3,
                          width: 60,
                          color: color,
                        ),
                        10.heigth,
                        CustomText().boldText(
                            style: context.textTheme.bodySmall!,
                            text: 'German',
                            color: AppColors.black),
                        3.heigth,
                        Container(
                          height: 3,
                          width: 50,
                          color: color,
                        ),
                        30.heigth,
                        CustomText().boldText(
                            style: context.textTheme.bodySmall!,
                            text: 'SKILLS',
                            fontWeight: FontWeight.w900,
                            color: color),
                        10.heigth,
                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: skills.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Row(children: [
                                    const Text(
                                      "\u2022",
                                      style: TextStyle(fontSize: 10),
                                    ), //bullet text
                                    const SizedBox(
                                      width: 10,
                                    ), //space between bullet and text
                                    CustomText().normalText(
                                        style: context.textTheme.bodySmall!,
                                        text: skills[index],
                                        color: AppColors.black),
                                  ]),
                                  5.heigth,
                                ],
                              );
                            }),
                        30.heigth,
                      ],
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 0,
                    height: 40,
                    width: 413,
                    child: Container(
                      color: color.withOpacity(.9),
                      padding: const EdgeInsets.only(left: 40, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomText().boldText(
                              style: context.textTheme.bodySmall!,
                              text: '8888888888',
                              color: AppColors.white),
                          30.width,
                          CustomText().boldText(
                              style: context.textTheme.bodySmall!,
                              text: 'denisecopper@example.com',
                              color: AppColors.white),
                          15.width,
                          // CustomText().boldText(
                          //     style: context.textTheme.bodySmall!,
                          //     text: 'California(CA), 91402',
                          //     color: AppColors.white),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 25,
                    left: 140,
                    child: CustomText().largeNormal(
                        text: 'DENISE  COOPER', color: color.withOpacity(.8)),
                  ),
                  Positioned(
                    top: 130,
                    left: 140,
                    width: 260,
                    // height: 40,
                    child: SizedBox(
                      width: 260,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText().boldText(
                              style: context.textTheme.bodySmall!,
                              text: 'PROFESSIONAL SUMMARY',
                              fontWeight: FontWeight.w900,
                              color: color),
                          10.heigth,
                          CustomText().normalText(
                              style: context.textTheme.bodySmall!,
                              text:
                                  'Dedicated and detail-oriented software developer with 4 years of experience in designing, implementing, and maintaining innovative software solutions.',
                              color: AppColors.black),
                          20.heigth,
                          CustomText().boldText(
                              style: context.textTheme.bodySmall!,
                              text: 'WORK HISTORY',
                              fontWeight: FontWeight.w900,
                              color: color),
                          10.heigth,
                          CustomText().normalText(
                              style: context.textTheme.bodySmall!,
                              text: 'September 2022 - Current ',
                              color: AppColors.black),
                          5.heigth,
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 200),
                            child: Row(
                              children: [
                                CustomText().boldText(
                                    style: context.textTheme.bodySmall!,
                                    text: 'Senior Software Developer',
                                    color: AppColors.black),
                              ],
                            ),
                          ),
                          10.heigth,
                          ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: points.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Row(children: [
                                      const Text(
                                        "\u2022",
                                        style: TextStyle(fontSize: 10),
                                      ), //bullet text
                                      const SizedBox(
                                        width: 10,
                                      ), //space between bullet and text
                                      ConstrainedBox(
                                        constraints:
                                            const BoxConstraints(maxWidth: 220),
                                        child: CustomText().normalText(
                                            style: context.textTheme.bodySmall!,
                                            text: points[index],
                                            color: AppColors.black),
                                      ),
                                    ]),
                                    5.heigth,
                                  ],
                                );
                              }),
                          10.heigth,
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
