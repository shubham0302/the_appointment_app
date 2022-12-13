import 'package:appointment_app/controllers/home_page_controller.dart';
import 'package:appointment_app/screens/home_screen/appointment_list.dart';
import 'package:appointment_app/theme/circleClip.dart';
import 'package:appointment_app/widgets/padding.dart';
import 'package:appointment_app/widgets/sized_box.dart';
import 'package:appointment_app/widgets/text_field/input_fields.dart';
import 'package:appointment_app/widgets/text_widget/description_text.dart';
import 'package:appointment_app/widgets/text_widget/heading_text.dart';
import 'package:appointment_app/widgets/text_widget/main_label_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/text_widget/label_text.dart';
import 'bottomNavBar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageController controller =
        Get.put(HomePageController(), permanent: false);
    ThemeData color = Theme.of(context);
    return Scaffold(
      backgroundColor: color.primaryColor,
      body: GlobalPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadingText(
              text: 'Today you should take:',
            ),
            SH.large(),
            Expanded(child: AppointmentList()),
          ],
        ),
      ),
    );
  }
}
