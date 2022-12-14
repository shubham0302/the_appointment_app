import 'package:appointment_app/app_labels/customize_screen.dart';
import 'package:appointment_app/widgets/padding.dart';
import 'package:appointment_app/widgets/text_widget/label_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/theme_controller.dart';
import 'alertbox_customize.dart';

class BrightnessCustomize extends StatelessWidget {
  const BrightnessCustomize({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.find<ThemeController>();
    return GlobalPadding(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LabelText(text: CScreenLabels.brightnessText),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (ctx) {
                  return const AlertBoxCustomize();
                },
                barrierDismissible: true,
              );
              // AlertDialog(content: AlertBoxCustomize(),);
              // themeController.changeThemeMode();
            },
            behavior: HitTestBehavior.translucent,
            child: Obx(
              () => LabelText(
                  text: themeController.isDark == true ? 'Dark' : 'Light'),
            ),
          ),
        ],
      ),
    );
  }
}
