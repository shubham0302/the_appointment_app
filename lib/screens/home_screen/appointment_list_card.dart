import 'package:appointment_app/widgets/padding.dart';
import 'package:appointment_app/widgets/sized_box.dart';
import 'package:appointment_app/widgets/text_widget/description_text.dart';
import 'package:appointment_app/widgets/text_widget/label_text.dart';
import 'package:flutter/material.dart';

class AppointmentListCard extends StatelessWidget {
  final String label;
  final String time;
  final String place;

  final String appointmentHeading;
  const AppointmentListCard({Key? key, required this.label, required this.time, required this.appointmentHeading, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData color = Theme.of(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: color.backgroundColor,
          borderRadius: BorderRadius.circular(20)),
      child: GlobalPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        15.0)), //this right here
                                child: Container(
                                  height: 500,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: SingleChildScrollView(
                                      physics: const BouncingScrollPhysics(),
                                      child: Column(
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SH.medium(),
                                          GestureDetector(
                                            onTap: () {},
                                            child: const GlobalPadding(
                                              child: LabelText(
                                                  text: 'Online Consultation'),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: const GlobalPadding(
                                              child: LabelText(
                                                  text: 'Patient Details'),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: const GlobalPadding(
                                              child: LabelText(
                                                  text: 'New Appointment'),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: const GlobalPadding(
                                              child: LabelText(
                                                  text: 'Resend Notification'),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: const GlobalPadding(
                                              child: LabelText(
                                                  text: 'Re-schedule'),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: const GlobalPadding(
                                              child: LabelText(text: 'Cancel'),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: const GlobalPadding(
                                              child: LabelText(
                                                  text: 'Record Visit'),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: const GlobalPadding(
                                              child: LabelText(
                                                  text: 'Add Prescription'),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: const GlobalPadding(
                                              child: LabelText(
                                                  text: 'Print Prescription'),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: const GlobalPadding(
                                              child: LabelText(
                                                  text: 'Print Receipt'),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: const GlobalPadding(
                                              child: LabelText(
                                                  text: 'Referral Letter'),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: const GlobalPadding(
                                              child: LabelText(
                                                  text: 'Lab Request'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      behavior: HitTestBehavior.translucent,
                      child: Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                width: 2, color: color.disabledColor)),
                        child: Icon(
                          Icons.more_vert,
                          color: color.disabledColor,
                        ),
                      ),
                    ),
                    SW.medium(),
                     LabelText(
                      text: appointmentHeading,
                      isBold: true,
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: color.primaryColor.withOpacity(.1)),
                  child:  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: DescriptionText(text: label),
                  ),
                )
              ],
            ),
            SH.medium(),
            SH.small(),
            Row(
              children: [
                 DescriptionText(text: "${time} AM"),
                SW.small(),
                Icon(
                  Icons.circle,
                  color: color.disabledColor,
                  size: 5,
                ),
                SW.small(),
                 DescriptionText(text: place),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
