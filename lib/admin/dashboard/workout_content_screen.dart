import 'package:evalution_note/app_theme.dart';
import 'package:evalution_note/widgets/deafult_list_tile.dart';
import 'package:flutter/material.dart';

class WorkoutContentManagementScreen extends StatelessWidget {
  static const id = '/WorkoutContentManagementScreen';
  const WorkoutContentManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout Management'),
        centerTitle: true,
        backgroundColor: AppTheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Workout Programs',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 20,
                  ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  DeafultListTile(
                    label: 'Beginner Workout',
                  ),
                  DeafultListTile(label: 'Advanced Strength Training')
                ],
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Add Workout Program'),
              style: ElevatedButton.styleFrom(
                iconColor: AppTheme.black,
                foregroundColor: AppTheme.black,
                backgroundColor: AppTheme.green,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Instructional Videos',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 20,
                  ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  DeafultListTile(label: 'Proper Squat Technique')
                ],
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Add Instructional Video'),
              style: ElevatedButton.styleFrom(
                iconColor: AppTheme.black,
                foregroundColor: AppTheme.black,
                backgroundColor: AppTheme.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
