import 'package:flutter/material.dart';

import '../Widgets/Home/TopBar.dart';
import '../Widgets/Home/Devices.dart';
import '../Widgets/Home/NearbyDevices.dart';
import '../Widgets/Home/Send.dart';
import '../Widgets/Home/Transfers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: Column(
        children: [
          Topbar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [Send(), Devices(), NearbyDevices(), Transfers()],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
