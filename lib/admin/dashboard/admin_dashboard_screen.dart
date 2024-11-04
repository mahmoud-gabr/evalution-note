import 'package:evalution_note/admin/dashboard/admin_app_settings_screen.dart';
import 'package:evalution_note/admin/dashboard/mange_user_screen.dart';
import 'package:evalution_note/admin/dashboard/workout_content_mangement_screen.dart';
import 'package:evalution_note/app_theme.dart';
import 'package:flutter/material.dart';

class AdminDashboardScreen extends StatelessWidget {
  static const String id = '/AdminDashboardScreen';
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('لوحة تحكم المشرف'),
        centerTitle: true,
        backgroundColor: AppTheme.primary,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppTheme.primary,
              ),
              child: Text(
                'قائمة المشرف',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 24,
                    ),
              ),
            ),
            ListTile(
              title: Text(
                'إدارة المستخدمين',
                style: Theme.of(context).textTheme.titleMedium!,
              ),
              onTap: () {
                Navigator.pushNamed(context, MangeUser.id);
              },
            ),
            ListTile(
              title: Text(
                'إدارة محتوى التمارين',
                style: Theme.of(context).textTheme.titleMedium!,
              ),
              onTap: () {
                Navigator.pushNamed(context, WorkoutContentManagementScreen.id);
              },
            ),
            ListTile(
              title: Text(
                'إعدادات التطبيق',
                style: Theme.of(context).textTheme.titleMedium!,
              ),
              onTap: () {
                Navigator.pushNamed(context, AdminAppSettingsScreen.id);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'مرحبا، مشرف!',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 24,
              ),
        ),
      ),
    );
  }
}
