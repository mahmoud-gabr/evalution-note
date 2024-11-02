import 'package:evalution_note/app_theme.dart';
import 'package:flutter/material.dart';

class WorkoutPlanDetailScreen extends StatelessWidget {
  static const  String id ='/WorkoutPlanDetailScreen'  ;

  const WorkoutPlanDetailScreen({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout Plan'),
        backgroundColor: AppTheme.primary,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Workout Plan: title",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            Text(
              "Details about the workout plan",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            
          ],
        ),
      ),
    );
  }
}
