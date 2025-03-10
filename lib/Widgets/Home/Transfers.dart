import 'package:flutter/material.dart';

import '../../Components/TransferItem.dart';
import '../../Types/TransferStatus.dart';

class Transfers extends StatelessWidget {
  const Transfers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Transfers",
                style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
              ),
            ],
          ),
          SizedBox(height: 20),
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              TransferItem(
                name: "IMG_5868.jpeg",
                size: "111.55KB",
                status: TransferStatus.Done,
                code: "947839",
                device: "iPhone",
                progress: 100,
              ),
              TransferItem(
                name: "IMG_5869.jpeg",
                size: "123.45MB",
                status: TransferStatus.InProgress,
                code: "123456",
                device: "Aaron's Macbook",
                progress: 55,
              ),
              TransferItem(
                name: "ubuntu-24.04-arm.iso",
                size: "1.5GB",
                status: TransferStatus.Failed,
                code: "123456",
                device: "Aaron's Macbook",
                progress: 55,
              ),
              TransferItem(
                name: "Homework.docx",
                size: "456MB",
                status: TransferStatus.Done,
                code: "947839",
                device: "iPhone",
                progress: 100,
              ),
              TransferItem(
                name: "IMG_5890.png",
                size: "429.23MB",
                status: TransferStatus.Pending,
                code: "123456",
                device: "Aaron's Macbook",
                progress: 55,
              ),
              TransferItem(
                name: "Report.ppt",
                size: "372MB",
                status: TransferStatus.InProgress,
                code: "947839",
                device: "iPhone",
                progress: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
