import 'package:evalution_note/app_theme.dart';
import 'package:flutter/material.dart';

class AdminAppSettingsScreen extends StatefulWidget {
  static const String id = '/AdminAppSettingsScreen';
  const AdminAppSettingsScreen({super.key});

  @override
  AdminAppSettingsScreenState createState() => AdminAppSettingsScreenState();
}

class AdminAppSettingsScreenState extends State<AdminAppSettingsScreen> {
  bool notificationsEnabled = true;
  String selectedLanguage = 'English';
  String selectedTheme = 'Light';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Settings'),
        centerTitle: true,
        backgroundColor: AppTheme.primary,
      ),
    );
  }
}
