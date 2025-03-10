import 'package:flutter/material.dart';

class SettingsList extends StatelessWidget {
  const SettingsList({
    super.key,
    required this.settings,
    required this.category,
  });

  final String category;
  final List<ListTile> settings;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            category,
            style: TextStyle(fontSize: 14, color: Colors.blue),
          ),
          SizedBox(height: 10),
          ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: settings,
          ),
        ],
      ),
    );
  }
}
