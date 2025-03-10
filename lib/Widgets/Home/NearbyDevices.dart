import 'package:flutter/material.dart';
import 'package:landroppage/Widgets/Home/ModalBottomSheet.dart';

import '../../Components/CircleButton.dart';

class NearbyDevices extends StatelessWidget {
  const NearbyDevices({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Nearby Devices",
                style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
              ),
              Transform.scale(
                scale: 0.7,
                child: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext content) {
                        return ModalBottomSheet();
                      },
                    );
                  },
                  icon: Icon(Icons.chevron_right),
                ),
              ),
              Badge(
                label: Text("BETA"),
                backgroundColor: Colors.blueAccent,
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 8),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleButton(
                backgroundColor: Colors.redAccent,
                iconColor: Colors.red,
                icon: Icons.phone_android_outlined,
                text: "Phone",
              ),
              SizedBox(width: 20),
              CircleButton(
                backgroundColor: Colors.greenAccent,
                iconColor: Colors.green,
                icon: Icons.tablet_android_outlined,
                text: "Tablet",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
