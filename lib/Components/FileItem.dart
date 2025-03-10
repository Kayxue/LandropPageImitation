import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FileItem extends StatelessWidget {
  const FileItem({
    super.key,
    required this.name,
    required this.size,
    required this.time,
  });

  final String name;
  final String size;
  final DateTime time;

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      clipBehavior: Clip.hardEdge,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: Colors.grey.shade300),
      ),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.only(top: 5, bottom: 5),
          child: ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.greenAccent.shade100.withAlpha(50),
              ),
              child: Icon(
                Icons.description_outlined,
                color: Colors.green,
                size: 30,
              ),
            ),
            title: Text(name, style: TextStyle(fontSize: 14)),
            subtitle: Text(
              "${(DateFormat.yMd().add_jm().format(time.toLocal()))} | $size",
              style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
            ),
            trailing: MenuAnchor(
              menuChildren: <Widget>[
                MenuItemButton(
                  leadingIcon: Icon(Icons.open_in_new),
                  onPressed: () {},
                  child: Text("Open with..."),
                ),
                MenuItemButton(
                  leadingIcon: Icon(
                    Icons.delete_outline_rounded,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                  child: Text("Delete", style: TextStyle(color: Colors.red)),
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
                  icon: Icon(Icons.more_horiz, color: Colors.grey.shade600),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
