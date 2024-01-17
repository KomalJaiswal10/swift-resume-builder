import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BaseCustomText {
  Widget defaultTextStyle({required Text text}) {
    return DefaultTextStyle.merge(
        style: const TextStyle(
          inherit: true,
          overflow: TextOverflow.ellipsis,
        ),
        child: text);
  }
}

class CustomText extends BaseCustomText {
  Widget mediumBoldBody({required String text, required Color color}) {
    return defaultTextStyle(
        text: Text(
      text,
      style: Theme.of(Get.context!)
          .textTheme
          .titleMedium!
          .copyWith(color: color, fontWeight: FontWeight.bold),
    ));
  }

  Widget mediumBody({required String text, required Color color}) {
    return defaultTextStyle(
        text: Text(
      text,
      style:
          Theme.of(Get.context!).textTheme.titleMedium!.copyWith(color: color),
    ));
  }

  Widget smallBoldBody({required String text, required Color color}) {
    return defaultTextStyle(
        text: Text(
      text,
      style: Theme.of(Get.context!)
          .textTheme
          .titleSmall!
          .copyWith(color: color, fontWeight: FontWeight.bold),
    ));
  }

  Widget largeBoldBody({required String text, required Color color}) {
    return defaultTextStyle(
        text: Text(
      text,
      style: Theme.of(Get.context!)
          .textTheme
          .displayMedium!
          .copyWith(color: color, fontWeight: FontWeight.w900),
    ));
  }

  Widget buttonText({required String text, required Color color}) {
    return defaultTextStyle(
        text: Text(
      text,
      style: Theme.of(Get.context!)
          .textTheme
          .titleMedium!
          .copyWith(color: color, fontWeight: FontWeight.bold),
    ));
  }
}
