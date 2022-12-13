import 'package:appointment_app/widgets/sized_box.dart';
import 'package:appointment_app/widgets/text_widget/description_text.dart';
import 'package:appointment_app/widgets/text_widget/main_label_text.dart';
import 'package:flutter/material.dart';

class DateChip extends StatelessWidget {
  final String weekDay;
  final String day;
  final int iconType;
  const DateChip(
      {super.key,
      required this.weekDay,
      required this.day,
      required this.iconType});

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context);
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: color.backgroundColor, shape: BoxShape.circle),
          child: Icon(
            iconType == 0
                ? Icons.person
                : iconType > 0
                    ? Icons.lock
                    : Icons.check,
            size: 25,
          ),
        ),
        SH.small(),
        DescriptionText(text: weekDay),
        SH.small(),
        MainLabelText(text: day)
      ],
    );
  }
}
