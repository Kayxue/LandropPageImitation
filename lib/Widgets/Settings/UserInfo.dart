import 'package:flutter/material.dart';
import 'package:device_friendly_name/device_friendly_name.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  Future<String> _getDeviceName() async {
    final String deviceName =
        await DeviceFriendlyName().getDeviceFriendlyName() ?? "User";
    return deviceName;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: ClipOval(
              child: Image(image: AssetImage("assets/avatar.jpeg")),
            ),
          ),
          SizedBox(width: 20),
          FutureBuilder(
            future: _getDeviceName(),
            builder: (context, snapshot) {
              return Text(
                snapshot.hasData ? snapshot.data! : "User",
                style: TextStyle(fontSize: 20),
              );
            },
          ),
          IconButton(icon: Icon(Icons.edit_outlined), onPressed: () {}),
        ],
      ),
    );
  }
}
