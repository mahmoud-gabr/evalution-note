import 'package:evalution_note/admin/dashboard/add_form_user_screen.dart';
import 'package:evalution_note/app_theme.dart';
import 'package:flutter/material.dart';

class MangeUser extends StatelessWidget {
  static const String id = '/MangeUser';
  const MangeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Management'),
        centerTitle: true,
        backgroundColor: AppTheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pushNamed(AddUserFormScreen.id);
              },
              style: ElevatedButton.styleFrom(
                iconColor: AppTheme.black,
                foregroundColor: AppTheme.black,
                backgroundColor: AppTheme.green,
              ),
              icon: const Icon(Icons.add),
              label: const Text('Add User'),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text('John Doe (Trainee)'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.edit,
                            color: AppTheme.grey,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: AppTheme.red,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Jane Smith (Trainer)'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.edit,
                            color: AppTheme.grey,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: AppTheme.red,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  // Add more user accounts here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
