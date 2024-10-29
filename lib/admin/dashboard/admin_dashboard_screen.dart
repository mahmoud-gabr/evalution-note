import 'package:evalution_note/admin/dashboard/admin_app_settings_screen.dart';
import 'package:evalution_note/admin/dashboard/mange_user_screen.dart';
import 'package:evalution_note/admin/dashboard/workout_content_screen.dart';
import 'package:evalution_note/app_theme.dart';
import 'package:flutter/material.dart';

class AdminDashboardScreen extends StatelessWidget {
  static const String id = '/AdminDashboardScreen';
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
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
                'Admin Menu',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 24,
                    ),
              ),
            ),
            ListTile(
              title: Text(
                'Manage Users',
                style: Theme.of(context).textTheme.titleMedium!,
              ),
              onTap: () {
                Navigator.pushNamed(context, MangeUser.id);
              },
            ),
            ListTile(
              title: Text(
                'Manage Workout Content',
                style: Theme.of(context).textTheme.titleMedium!,
              ),
              onTap: () {
                Navigator.pushNamed(context, WorkoutContentManagementScreen.id);
              },
            ),
            ListTile(
              title: Text(
                'App Settings',
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
          'Welcome, Admin!',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 24,
              ),
        ),
      ),
    );
  }
}
