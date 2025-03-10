import 'package:flutter/material.dart';

import '../../Components/CircleButton.dart';

class Devices extends StatelessWidget {
  const Devices({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Devices",
                style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
              ),
              MenuAnchor(
                menuChildren: <Widget>[
                  MenuItemButton(
                    leadingIcon: Icon(Icons.public),
                    onPressed: () {},
                    child: Text("Add via IP & Port"),
                  ),
                ],
                builder: (context, controller, child) {
                  return IconButton(
                    onPressed: () {
                      if (controller.isOpen) {
                        controller.close();
                      } else {
                        controller.open();
                      }
                    },
                    icon: Icon(Icons.add),
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleButton(
                backgroundColor: Colors.amberAccent,
                iconColor: Colors.amber,
                icon: Icons.computer_outlined,
                text: "Aaron's MacBook",
              ),
              SizedBox(width: 20),
              CircleButton(
                backgroundColor: Colors.blueAccent,
                iconColor: Colors.blue,
                icon: Icons.phone_iphone_outlined,
                text: "iPhone",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
