import 'package:flutter/material.dart';

class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Nearby Devices", style: TextStyle(fontSize: 24)),
                SizedBox(width: 10),
                Badge(
                  label: Text("BETA"),
                  backgroundColor: Colors.blueAccent,
                  textColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 8),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: Text(
                "You can now send files to nearby devices, even if you're not connected to the same Wi-Fi network.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: Text(
                "Heads up: If you're not connected to any Wi-Fi network and are using cellular data, be mindful of potential data charges.",
                style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
