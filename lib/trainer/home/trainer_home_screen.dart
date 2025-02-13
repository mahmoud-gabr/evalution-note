import 'package:evalution_note/trainer/home/trainer_mange_video_screen.dart';
import 'package:evalution_note/trainer/home/trainer_profile_screen.dart';
import 'package:evalution_note/trainer/home/trainer_workout_screen.dart';
import 'package:evalution_note/widgets/deafult_elevated_botton.dart';
import 'package:flutter/material.dart';
import 'package:evalution_note/app_theme.dart';

class TrainerHomeScreen extends StatelessWidget {
  static const String id = '/TrainerHomeScreen';

  const TrainerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الصفحة الرئيسية للمدرب'),
        backgroundColor: AppTheme.primary,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppTheme.primary.withOpacity(0.05),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DeafaultElevetedBotton(
              label: 'تحديث الملف الشخصي',
              onPressed: () {
                Navigator.pushNamed(context, TrainerProfileScreen.id);
              },
            ),
            const SizedBox(height: 16),
            DeafaultElevetedBotton(
              label: 'تصميم برنامج تدريبي',
              onPressed: () {
                Navigator.pushNamed(context, WorkoutProgramDesignScreen.id);
              },
            ),
            const SizedBox(height: 16),
            DeafaultElevetedBotton(
              label: 'إدارة الفيديوهات',
              onPressed: () {
                Navigator.pushNamed(context, VideoManagementScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
