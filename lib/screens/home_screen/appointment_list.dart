
import 'package:appointment_app/screens/home_screen/appointment_list_card.dart';
import 'package:appointment_app/widgets/padding.dart';
import 'package:appointment_app/widgets/sized_box.dart';
import 'package:appointment_app/widgets/text_widget/description_text.dart';
import 'package:appointment_app/widgets/text_widget/label_text.dart';
import 'package:flutter/material.dart';

class AppointmentList extends StatelessWidget {
  const AppointmentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData color = Theme.of(context);

    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) => SH.medium(),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return AppointmentListCard(appointmentHeading: 'Doctor meeting',label: 'ABCD',time: '8:00', place: 'Gandhinagar',);
      },
    );
  }
}
