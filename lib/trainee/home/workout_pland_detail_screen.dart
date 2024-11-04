import 'package:evalution_note/app_theme.dart';
import 'package:flutter/material.dart';

class WorkoutPlanDetailScreen extends StatelessWidget {
  static const String id = '/WorkoutPlanDetailScreen';

  const WorkoutPlanDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('خطة التمرين'),
        backgroundColor: AppTheme.primary,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "خطة التمرين: العنوان",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            Text(
              "تفاصيل عن خطة التمرين",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
