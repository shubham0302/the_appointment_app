import 'package:appointment_app/controllers/home_page_controller.dart';
import 'package:appointment_app/screens/home_screen/main_screen.dart';
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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageController controller =
        Get.put(HomePageController(), permanent: false);
    ThemeData color = Theme.of(context);
    return Scaffold(
        backgroundColor: color.primaryColor,
        bottomNavigationBar: buildBottomNavigationMenu(context, 0, controller),
        body: SafeArea(
          child: Obx(() => Column(
                children: [
                  GlobalPadding(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // const Icon(
                      //   Icons.menu,
                      //   size: 22,
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 2,
                            width: 20,
                            color: color.backgroundColor,
                          ),
                          SH.small(),
                          Container(
                            height: 2,
                            width: 10,
                            color: color.backgroundColor,
                          ),
                          SH.small(),
                          Container(
                            height: 2,
                            width: 20,
                            color: color.backgroundColor,
                          ),
                        ],
                      ),
                      const LabelText(
                        text: 'Hey, Vraj',
                        isBold: true,
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                width: 2, color: color.backgroundColor)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: const Image(
                            image: AssetImage('assets/images/abc.jpg'),
                            // fit: BoxFit.fill,
                            height: 30, width: 30,
                          ),
                        ),
                      )
                    ],
                  )),
                  Expanded(
                    child: IndexedStack(
                      index: controller.tabIndex.value,
                      children: [
                        const MainScreen(),
                        const MainScreen(),
                        const MainScreen(),
                        const MainScreen(),
                        const MainScreen(),
                      ],
                    ),
                  ),
                ],
              )),
        ));
  }
}
