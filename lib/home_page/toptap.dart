import 'package:flutter/material.dart';

class TopTab extends StatelessWidget {
  const TopTab({
    super.key,
    required this.caption,
    required this.withcont,
    required this.concolor,
    required this.textcolor,
    required this.isActive,
  });
  final String caption;

  final double withcont;
  final Color concolor;
  final bool isActive;
  final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(
          right: 30,
        ),
        height: 40,
        width: withcont,
        decoration: BoxDecoration(
            color: isActive ? Colors.white : concolor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(14)),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            caption,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: textcolor),
          ),
        ),
      ),
    );
  }
}