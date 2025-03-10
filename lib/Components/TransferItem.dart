import 'package:flutter/material.dart';

import '../Types/TransferStatus.dart';

class TransferItem extends StatelessWidget {
  const TransferItem({
    super.key,
    required this.name,
    required this.size,
    required this.status,
    required this.code,
    required this.device,
    required this.progress,
  });

  final String name;
  final String size;
  final String code;
  final String device;
  final TransferStatus status;
  final int progress;

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: Colors.grey.shade300),
      ),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: (status == TransferStatus.InProgress
                    ? Colors.blueAccent
                    : (status == TransferStatus.Done
                        ? Colors.greenAccent
                        : (status == TransferStatus.Failed
                            ? Colors.redAccent
                            : Colors.orangeAccent)))
                .shade100
                .withAlpha(50),
          ),
          child: Icon(
            Icons.description_outlined,
            color:
                status == TransferStatus.InProgress
                    ? Colors.blue
                    : (status == TransferStatus.Done
                        ? Colors.green
                        : (status == TransferStatus.Failed
                            ? Colors.red
                            : Colors.orange)),
            size: 30,
          ),
        ),
        title: Text(
          name,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$size・Code: $code",
                style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
              ),
              Text(
                device,
                style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
              ),
            ],
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            (status == TransferStatus.InProgress
                ? CircularProgressIndicator(
                  constraints: BoxConstraints(
                    minWidth: 15,
                    minHeight: 15,
                  ),
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  backgroundColor: Colors.grey.shade300,
                  value: progress / 100,
                )
                : Icon(
                  status == TransferStatus.Done
                      ? Icons.check_circle
                      : (status == TransferStatus.Failed
                          ? Icons.cancel
                          : Icons.schedule_outlined),
                  color:
                      status == TransferStatus.Done
                          ? Colors.green
                          : (status == TransferStatus.Failed
                              ? Colors.red
                              : Colors.orange),
                )),
            SizedBox(width: 10),
            Text(
              status == TransferStatus.InProgress
                  ? "$progress%"
                  : (status == TransferStatus.Done
                      ? "Done"
                      : (status == TransferStatus.Failed
                          ? "Failed"
                          : "Pending")),
              style: TextStyle(
                fontSize: 12,
                color:
                    status == TransferStatus.InProgress
                        ? Colors.blue
                        : (status == TransferStatus.Done
                            ? Colors.green
                            : (status == TransferStatus.Failed
                                ? Colors.red
                                : Colors.orange)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
