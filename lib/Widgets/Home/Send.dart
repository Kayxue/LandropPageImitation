import 'package:flutter/material.dart';
import '../../Components/CircleButton.dart';

class Send extends StatelessWidget {
  const Send({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Send",
            style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleButton(
                backgroundColor: Colors.tealAccent,
                iconColor: Colors.teal,
                icon: Icons.description_outlined,
                text: "Files",
              ),
              CircleButton(
                backgroundColor: Colors.blueAccent,
                iconColor: Colors.blue,
                icon: Icons.photo_outlined,
                text: "Photos",
              ),
              CircleButton(
                backgroundColor: Colors.pinkAccent,
                iconColor: Colors.pink,
                icon: Icons.article_outlined,
                text: "Text",
              ),
              CircleButton(
                backgroundColor: Colors.purpleAccent,
                iconColor: Colors.purple,
                icon: Icons.topic_outlined,
                text: "Folder",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
