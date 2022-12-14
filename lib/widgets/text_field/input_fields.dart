// ignore_for_file: prefer_if_null_operators, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../theme_config.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final FocusNode? focusNode;

  final IconData? tailingIcon;
  final TextInputType? textType;
  final TextEditingController? controller;
  final Function? ontap;
  final bool? focus;
  final bool? obsecure;
  final Color? fillColor;
  final bool? isWhiteHintText;
  final bool? isDescription;
  final int? maxLenght;
  final Function? ontapSuffix;

  final labelText;
  final Function(String)? onChange;
  final Function(String)? onSubmit;

  const InputField({
    Key? key,
    required this.hintText,
    this.tailingIcon,
    this.textType,
    this.controller,
    this.onChange,
    this.labelText,
    this.ontap,
    this.onSubmit,
    this.focus,
    this.focusNode,
    this.obsecure,
    this.fillColor,
    this.ontapSuffix,
    this.isWhiteHintText = false,
    this.isDescription = false,
    this.maxLenght,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData color = Theme.of(context);

    return TextField(
      obscureText: obsecure == true ? true : false,
      autofocus: focus == true ? true : false,
      onSubmitted: onSubmit,
      cursorColor: ThemeConfig.primaryColor,
      controller: controller != null ? controller : null,
      keyboardType: textType,
      onChanged: onChange,
      focusNode: focusNode,
      maxLength: maxLenght,
      maxLines: isDescription! ? 3 : 1,
      onTap: () {
        // ignore: avoid_print
        ontap != null ? ontap!() : print('');
      },
      decoration: tailingIcon != null
          ? InputDecoration(
              counterText: '',
              isDense: true,
              filled: true,
              fillColor: color.backgroundColor,
              // contentPadding:
              //     const EdgeInsets.only(top: 10, bottom: 10, left: 20),
              hintText: hintText,
              labelText: labelText,
              hintStyle: TextStyle(
                  // fontSize: 20,
                  color: isWhiteHintText == true
                      ? ThemeConfig.whiteColor
                      : ThemeConfig.mainTextColor),
              suffixIcon: ontapSuffix == null
                  ? null
                  : GestureDetector(
                      child: Icon(
                        tailingIcon,
                        color: ThemeConfig.mainTextColor,
                      ),
                      onTap: () => ontapSuffix!(),
                    ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(ThemeConfig.radiusMin),
                borderSide: const BorderSide(
                    color: ThemeConfig.primaryColorLite, width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(ThemeConfig.radiusMin),
                borderSide: const BorderSide(
                    color: ThemeConfig.primaryColorLite, width: 1),
              ),
              border: OutlineInputBorder(
                gapPadding: 0,
                borderRadius: BorderRadius.circular(ThemeConfig.radiusMin),
                borderSide: const BorderSide(
                    color: ThemeConfig.primaryColorLite, width: 1),
              ),
            )
          : InputDecoration(
              isDense: true,
              filled: true,
              fillColor: color.backgroundColor,
              contentPadding:
                  const EdgeInsets.only(top: 13, bottom: 13, left: 20),
              hintText: hintText,
              labelText: labelText,
              counterText: '',
              hintStyle: const TextStyle(
                  color: ThemeConfig.mainTextColor, fontSize: 25),
              labelStyle: const TextStyle(
                  color: ThemeConfig.mainTextColor, fontSize: 20),
              alignLabelWithHint: true,
              floatingLabelStyle: const TextStyle(
                color: ThemeConfig.secondaryColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(ThemeConfig.radiusMin),
                borderSide: const BorderSide(
                    color: ThemeConfig.secondaryColor, width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(ThemeConfig.radiusMin),
                borderSide: const BorderSide(
                    color: ThemeConfig.primaryColorLite, width: 1),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(ThemeConfig.radiusMin),
                borderSide: const BorderSide(
                    color: ThemeConfig.primaryColorLite, width: 1),
              ),
            ),
    );
  }
}
