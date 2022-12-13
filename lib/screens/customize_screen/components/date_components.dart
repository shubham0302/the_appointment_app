import 'package:appointment_app/controllers/date_controller.dart';
import 'package:appointment_app/widgets/dateChip.dart';
import 'package:appointment_app/widgets/sized_box.dart';
import 'package:appointment_app/widgets/text_widget/description_text.dart';
import 'package:appointment_app/widgets/text_widget/main_label_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class DateComponent extends StatelessWidget {
  const DateComponent({super.key});

  @override
  Widget build(BuildContext context) {
    DateController dateController = Get.put(DateController());
    ThemeData color = Theme.of(context);
    return Obx(
      () => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MainLabelText(text: "September 2022"),
              // Row(
              //   children: [
              //     const MainLabelText(text: "Week"),
              //     SW.small(),
              //     const MainLabelText(text: "."),
              //     SW.small(),
              //     const MainLabelText(text: "Month")
              //   ],
              // ),
            ],
          ),
          SH.large(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  dateController.addPastDate();
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white38, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.chevron_left,
                    size: 25,
                  ),
                ),
              ),
              SW.small(),
              SizedBox(
                height: 100,
                width: 290,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return DateChip(
                          weekDay: dateController
                              .getDay[dateController.dates[index].weekday]
                              .toString(),
                          day: dateController.dates[index].day.toString(),
                          iconType: dateController.dates[index]
                              .compareTo(newDate.toUtc()));
                    },
                    separatorBuilder: (context, index) => SW.medium(),
                    itemCount: dateController.dates.length),
              ),
              SW.small(),
              GestureDetector(
                onTap: () {
                  print(dateController.dates);
                  dateController.addDate();
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white38, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.chevron_right,
                    size: 25,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  // void main() {
  //   List dates = [
  //     DateTime.now(),
  //     DateTime.now().add(
  //       Duration(days: -1),
  //     ),
  //     DateTime.now().add(
  //       Duration(days: -2),
  //     )
  //   ];
  // }
}
