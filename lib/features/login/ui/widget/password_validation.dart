import 'package:flutter/material.dart';
import 'package:mydoctor/core/helper/spacing.dart';
import 'package:mydoctor/core/theming/colors.dart';

import '../../../../core/theming/styling.dart';

class PsswordVlidation extends StatelessWidget {
  final bool haslowercase;
  final bool hasUppercase;
  final bool number;
  final bool hasSpecialCharacter;
  final bool hasminuimlenght;

  const PsswordVlidation(
      {super.key,
      required this.haslowercase,
      required this.hasUppercase,
      required this.number,
      required this.hasSpecialCharacter,
      required this.hasminuimlenght});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildvalidateRow('At Least 1 lowercase letter', haslowercase),
        verticalSpace(1),
        buildvalidateRow('At Least Uppercase letter', hasUppercase),
        verticalSpace(1),
        buildvalidateRow('At Least 1 Number', number),
        verticalSpace(1),
        buildvalidateRow('At Least 1 SpecialCharacter', hasSpecialCharacter),
        verticalSpace(1),
        buildvalidateRow('At Least 8 letter lenght', hasminuimlenght)
      ],
    );
  }
}

Widget buildvalidateRow(String text, bool hasvalidated) {
  return Row(
    children: [
      const CircleAvatar(
        backgroundColor: Colors.grey,
        radius: 2.5,
      ),
      horizontalSpace(6),
      Text(text,
          style: TextStyles.Fons15greynormal.copyWith(
              decoration: hasvalidated ? TextDecoration.lineThrough : null,
              decorationColor: Colors.green,
              decorationThickness: 2,
              color:
                  hasvalidated ? ColorsManager.gray : ColorsManager.darkblue))
    ],
  );
}
