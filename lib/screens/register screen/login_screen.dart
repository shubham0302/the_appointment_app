import 'package:appointment_app/screens/customize_screen/components/date_components.dart';
import 'package:appointment_app/theme/circleClip.dart';
import 'package:appointment_app/widgets/padding.dart';
import 'package:appointment_app/widgets/sized_box.dart';
import 'package:appointment_app/widgets/text_field/input_fields.dart';
import 'package:appointment_app/widgets/text_widget/description_text.dart';
import 'package:appointment_app/widgets/text_widget/heading_text.dart';
import 'package:appointment_app/widgets/text_widget/main_label_text.dart';
import 'package:flutter/material.dart';

import '../../widgets/text_widget/label_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData color = Theme.of(context);
    return Scaffold(
      backgroundColor: color.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.width * .6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * .5),
                      bottomLeft: Radius.circular(
                          MediaQuery.of(context).size.width * .5))),
              child: const Image(
                image: AssetImage('assets/images/logo1.png'),
              ),
              // child: const Image(
              //   image: AssetImage('assets/images/logo1.png'),
              // ),
            ),
            SH.large(),
            SH.large(),
            SH.large(),
            const GlobalPadding(
                child: Center(
              child: HeadingText(
                text: 'ADD YOUR CREDENTIALS',
              ),
            )),
            SH.large(),
            SH.large(),
            GlobalPadding(
                child: Row(
              children: [
                const Expanded(flex: 2, child: MainLabelText(text: 'EMAIL-')),
                SW.medium(),
                const Expanded(flex: 5, child: InputField(hintText: ''))
              ],
            )),
            SH.large(),
            GlobalPadding(
                child: Row(
              children: [
                const Expanded(
                    flex: 2, child: MainLabelText(text: 'PASSWORD-')),
                SW.medium(),
                const Expanded(flex: 5, child: InputField(hintText: ''))
              ],
            )),
            const GlobalPadding(
              child: Align(
                  alignment: Alignment.centerRight,
                  child: DescriptionText(text: 'FORGOT PASSWORD')),
            ),
            SH.large(),
            SH.large(),
            const Center(child: LabelText(text: 'DONT HAVE AN ACCOUNT ?')),
            const Center(child: MainLabelText(text: 'SIGNUP')),
            const GlobalPadding(child: DateComponent())
          ],
        ),
      ),
    );
  }
}
