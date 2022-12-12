import 'package:appointment_app/screens/customize_screen/components/free_color_customize.dart';
import 'package:appointment_app/screens/customize_screen/components/header_customize.dart';
import 'package:appointment_app/screens/customize_screen/components/premium_brightness_customize.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/sized_box.dart';
import 'components/brightness_customize.dart';
import 'components/category_icon_customize.dart';

class CustomizeScreen extends StatelessWidget {
  const CustomizeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SH.large(),
          SH.large(),
          const HeaderCustomize(),
          const Divider(),
          const BrightnessCustomize(),
          const Divider(),
          const PrimumBrighnessCustomize(),
          const Divider(),
          const CategoryIconStyle(),
          const Divider(),

          const FreeColor(),

          GestureDetector(
            onTap: () {
              Get.toNamed('/intro');
            },
            child: Container(
              height: 50,
              width: 50,
              color: Colors.pink,
            ),
          )

          // SH.medium(),
        ],
      ),
    );
  }
}
