import 'dart:async';

import 'package:appointment_app/controllers/theme_controller.dart';
import 'package:appointment_app/theme/color_scheme.dart';
import 'package:appointment_app/widgets/padding.dart';
import 'package:appointment_app/widgets/sized_box.dart';
import 'package:appointment_app/widgets/text_widget/button_text.dart';
import 'package:appointment_app/widgets/text_widget/description_text.dart';
import 'package:appointment_app/widgets/text_widget/heading_text.dart';
import 'package:appointment_app/widgets/text_widget/label_text.dart';
import 'package:appointment_app/widgets/text_widget/main_label_text.dart';
import 'package:appointment_app/widgets/text_widget/title_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Get.toNamed('/register-as');
    });
    ThemeController themeController = Get.find<ThemeController>();
    ThemeData color = Theme.of(context);
    return Scaffold(
        backgroundColor: color.primaryColor,
        body: GlobalPadding(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: color.backgroundColor),
              child: Image(
                image: AssetImage('assets/images/logo1.png'),
              ),
            ),
          ),
        ));
  }
}
