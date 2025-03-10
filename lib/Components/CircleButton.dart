import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
    required this.backgroundColor,
    required this.iconColor,
    required this.icon,
    required this.text,
  });

  final MaterialAccentColor backgroundColor;
  final MaterialColor iconColor;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor.shade100.withAlpha(50),
          ),
          child: IconButton(
            icon: Icon(icon, color: iconColor.shade400),
            iconSize: 30,
            onPressed: () {},
          ),
        ),
        SizedBox(height: 8),
        SizedBox(
          width: 65,
          child: Text(
            text,
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
            softWrap: true,
            overflow: TextOverflow.visible,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
