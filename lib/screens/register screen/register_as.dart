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

class RegisterAsScreen extends StatelessWidget {
  const RegisterAsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.find<ThemeController>();
    ThemeData color = Theme.of(context);
    return Scaffold(
      backgroundColor: color.primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.width * .6,
            width: MediaQuery.of(context).size.width * .7,
            decoration: BoxDecoration(
                color: color.backgroundColor,
                borderRadius: BorderRadius.only(
                  bottomRight:
                      Radius.circular(MediaQuery.of(context).size.width * .5),
                )),
            child: const Image(
              image: AssetImage('assets/images/logo1.png'),
            ),
          ),
          SH.large(),
          SH.large(),
          SH.large(),
          SH.large(),

          // ignore: prefer_const_constructors
          GlobalPadding(
              child: const Center(
            child: HeadingText(
              text: 'REGISTER AS',
              alignment: TextAlign.center,
            ),
          )),
          SH.large(),
          SH.large(),

          GestureDetector(
            onTap: () {
              Get.toNamed('/login');
            },
            child: GlobalPadding(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    decoration: BoxDecoration(
                        color: color.backgroundColor,
                        borderRadius: BorderRadius.circular(50)),
                    alignment: Alignment.center,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: TitleText(text: 'DOCTOR'),
                    ),
                  ),
                )
              ],
            )),
          ),
          SH.large(),

          GestureDetector(
            onTap: () {
              Get.toNamed('/login');
            },
            child: GlobalPadding(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    decoration: BoxDecoration(
                        color: color.backgroundColor,
                        borderRadius: BorderRadius.circular(50)),
                    alignment: Alignment.center,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: TitleText(text: 'HOSPITAL'),
                    ),
                  ),
                )
              ],
            )),
          ),
        ],
      ),
    );
  }
}
