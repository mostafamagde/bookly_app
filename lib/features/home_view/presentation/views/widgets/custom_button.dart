import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.border,
      required this.containerColor,
      required this.text,
      required this.textColor});

  final BorderRadiusGeometry border;
  final Color containerColor;
  final Color textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {},
      child: Container(
        height: 48,
        width: 150,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: border,
        ),
        child: Center(
          child: Text(
            text,
            style: theme.textTheme.labelMedium?.copyWith(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
