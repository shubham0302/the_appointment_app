// ignore_for_file: file_names

import 'package:appointment_app/controllers/home_page_controller.dart';
import 'package:appointment_app/widgets/sized_box.dart';
import 'package:appointment_app/widgets/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildBottomNavigationMenu(
    context, int selectedIndex, HomePageController controller) {
  ThemeData color = Theme.of(context);

  final double sizeWidth = MediaQuery.of(context).size.width;
  return Obx(() {
    return BottomAppBar(
      // shape: const CircularNotchedRectangle(),
      color: color.backgroundColor,
      child: Container(
        alignment: Alignment.center,
        // margin: const EdgeInsets.all(5),
        width: sizeWidth,
        height: 80,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(ThemeConfig.radiusMin),
              topRight: Radius.circular(ThemeConfig.radiusMin)),
          color: ThemeConfig.backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SW.medium(),
            buildBottomNavItem(() {
              controller.changeTabIndex(0);
            },
                controller.tabIndex.value == 0
                    ? Icons.home_filled
                    : Icons.home_filled,
                controller.tabIndex.value == 0,
                'Home',
                context),
            SW.medium(),
            buildBottomNavItem(() {
              controller.changeTabIndex(1);
            },
                controller.tabIndex.value == 1
                    ? Icons.date_range
                    : Icons.date_range,
                controller.tabIndex.value == 1,
                'Appointment',
                context),
            SW.medium(),
            buildBottomNavItem(() {
              controller.changeTabIndex(2);
            }, controller.tabIndex.value == 2 ? Icons.person : Icons.person,
                controller.tabIndex.value == 2, 'Patient', context),
            SW.medium(),
            buildBottomNavItem(() {
              controller.changeTabIndex(3);
            },
                controller.tabIndex.value == 3
                    ? Icons.medical_services_outlined
                    : Icons.medical_services_outlined,
                controller.tabIndex.value == 3,
                'Doctors',
                context),
            SW.medium(),
          ],
        ),
      ),
    );
  });
}

BottomNavigationBarItem buildBottomItems(IconData icon, String label) {
  return BottomNavigationBarItem(
      icon: Icon(
        icon,
        size: 25.00,
      ),
      label: label);
}

Widget buildBottomNavItem(
    VoidCallback op, IconData icon, bool selected, String lable, context) {
  ThemeData color = Theme.of(context);

  return GestureDetector(
    behavior: HitTestBehavior.translucent,
    onTap: op,
    child: Column(
      children: [
        SH.medium(),
        Expanded(
          child: Container(
              // duration: const Duration(milliseconds: 400),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: selected ? Colors.transparent : Colors.transparent,
              ),
              child: selected
                  ? Icon(
                      icon,
                      size: 22,
                      color: color.primaryColor,
                    )
                  // ignore: avoid_unnecessary_containers
                  : Icon(
                      icon,
                      size: 22,
                      color: color.hintColor,
                    )),
        ),
        // SH.medium(),
        // Container(
        //   height: 3,
        //   width: 15,
        //   color: selected ? color.primaryColor : Colors.transparent,
        // ),
        SH.medium(),
        Text(
          lable,
          style: TextStyle(
            color: selected ? color.primaryColor : ThemeConfig.mainTextColor,
            fontSize: 12,

            // fontSize: selected ? 10 : 10,
            fontWeight: FontWeight.bold,
          ),
        ),
        SH.large(),
      ],
    ),
  );
}
