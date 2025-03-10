import 'package:flutter/material.dart';
import 'package:landroppage/Types/Language.dart';

import '../Components/SettingsList.dart';
import '../Widgets/Settings/UserInfo.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool discoverable = true;
  bool saveToGallery = true;
  ThemeMode themeMode = ThemeMode.system;
  Language language = Language.Auto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 36.0, right: 36.0, bottom: 20.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Settings", style: TextStyle(fontSize: 24))],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  UserInfo(),
                  SettingsList(
                    category: "General",
                    settings: [
                      ListTile(
                        leading: Icon(Icons.visibility),
                        title: Text("Discoverable"),
                        trailing: Switch(
                          value: discoverable,
                          onChanged: (value) {
                            setState(() {
                              discoverable = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.photo_library),
                        title: Text("Save to Gallery"),
                        trailing: Switch(
                          value: saveToGallery,
                          onChanged: (value) {
                            setState(() {
                              saveToGallery = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.brightness_medium),
                        title: Text("Theme Mode"),
                        trailing: DropdownButton(
                          items: const [
                            DropdownMenuItem(
                              value: ThemeMode.system,
                              child: Text("System"),
                            ),
                            DropdownMenuItem(
                              value: ThemeMode.light,
                              child: Text("Light"),
                            ),
                            DropdownMenuItem(
                              value: ThemeMode.dark,
                              child: Text("Dark"),
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              themeMode = value!;
                            });
                          },
                          value: themeMode,
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.public),
                        title: Text("Language"),
                        trailing: DropdownButton(
                          items: const [
                            DropdownMenuItem(
                              value: Language.Auto,
                              child: Text("Auto"),
                            ),
                            DropdownMenuItem(
                              value: Language.English,
                              child: Text("English"),
                            ),
                            DropdownMenuItem(
                              value: Language.SimplifiedChinese,
                              child: Text("简体中文"),
                            ),
                            DropdownMenuItem(
                              value: Language.TraditionalChinese,
                              child: Text("繁體中文"),
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              language = value!;
                            });
                          },
                          value: language,
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.delete),
                        title: Text("Clear Cache"),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.update),
                        title: Text("Check for Updates"),
                        onTap: () {},
                      ),
                    ],
                  ),
                  SettingsList(
                    category: "Advanced",
                    settings: [
                      ListTile(
                        leading: Icon(Icons.devices),
                        title: Text("Manage Trusted Devices"),
                        trailing: Icon(Icons.chevron_right),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.copy_outlined),
                        title: Text("Copy My Device ID"),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.info_outline_rounded),
                        title: Text("IP Address & Port"),
                        onTap: () {},
                      ),
                    ],
                  ),
                  SettingsList(
                    category: "About",
                    settings: [
                      ListTile(
                        leading: Icon(Icons.feedback),
                        title: Text("Report Feedback"),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.gpp_maybe),
                        title: Text("Privacy Policy"),
                        trailing: Icon(Icons.chevron_right),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.info_rounded),
                        title: Text("About"),
                        trailing: Icon(Icons.chevron_right),
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
