import 'package:flutter/material.dart';

import '../Components/FileItem.dart';

class FilesPage extends StatelessWidget {
  const FilesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 36.0, right: 36.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Files", style: TextStyle(fontSize: 24))],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.folder_rounded, color: Colors.amber, size: 20),
                      SizedBox(width: 5),
                      Text("Documents", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                Positioned(
                  right: 28,
                  child: MenuAnchor(
                    menuChildren: <Widget>[
                      MenuItemButton(
                        leadingIcon: const Icon(
                          Icons.delete_outline_rounded,
                          color: Colors.red,
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Delete All Files",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                    builder: (context, controller, child) {
                      return IconButton(
                        icon: const Icon(Icons.more_horiz_rounded),
                        onPressed: () {
                          if (controller.isOpen) {
                            controller.close();
                          } else {
                            controller.open();
                          }
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              children: [
                FileItem(
                  name: "IMG_5868.jpeg",
                  size: "111.55KB",
                  time: DateTime.parse("2025-03-05T17:22:41+08:00"),
                ),
                FileItem(
                  name: "Homework.docs",
                  size: "456MB",
                  time: DateTime.parse("2025-03-04T09:22:41+08:00"),
                ),
                FileItem(
                  name: "Windows11.iso",
                  size: "5.4GB",
                  time: DateTime.parse("2025-03-02T09:56:41+08:00"),
                ),
                FileItem(
                  name: "IMG_5867.jpeg",
                  size: "12MB",
                  time: DateTime.parse("2025-02-26T09:00:03+08:00"),
                ),
                FileItem(
                  name: "Fortuna for Tuna.zip",
                  size: "5.4MB",
                  time: DateTime.parse("2025-02-23T16:08:47+08:00"),
                ),
                FileItem(
                  name: "Cutter.rar",
                  size: "2.5MB",
                  time: DateTime.parse("2025-01-31T20:34:26+08:00"),
                ),
                FileItem(
                  name: "Programming Language.zip",
                  size: "1GB",
                  time: DateTime.parse("2024-12-31T15:00:26+08:00"),
                ),
                FileItem(
                  name: "zed-darwin.dmg",
                  size: "328.03MB",
                  time: DateTime.parse("2024-12-17T09:36:13+08:00"),
                ),
                FileItem(
                  name: "vscodium-Mac-arm64.dmg",
                  size: "147.03MB",
                  time: DateTime.parse("2024-12-13T22:16:47+08:00"),
                ),
                FileItem(
                  name: "clop-apple-arm.dmg",
                  size: "326.93MB",
                  time: DateTime.parse("2024-12-09T17:08:15+08:00"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
