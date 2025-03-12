import 'package:device_friendly_name/device_friendly_name.dart';
import 'package:flutter/material.dart';

class Topbar extends StatefulWidget {
  const Topbar({super.key});

  @override
  State<Topbar> createState() => _TopbarState();
}

class _TopbarState extends State<Topbar> {
  Future<String> _getDeviceName() async {
    final String deviceName =
        await DeviceFriendlyName().getDeviceFriendlyName() ?? "User";
    return deviceName;
  }

  bool discoverTurnedOn = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FutureBuilder(
            future: _getDeviceName(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    "Hello ${snapshot.data} 👋",
                    style: TextStyle(fontSize: 24),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                  ),
                );
              }
              return Text("Hello, User 👋", style: TextStyle(fontSize: 24));
            },
          ),
          IconButton(
            icon: Icon(
              discoverTurnedOn
                  ? Icons.wifi_tethering
                  : Icons.wifi_tethering_off,
            ),
            onPressed: () {
              setState(() {
                discoverTurnedOn = !discoverTurnedOn;
              });
            },
          ),
        ],
      ),
    );
  }
}
