import 'package:evalution_note/app_theme.dart';
import 'package:evalution_note/trainee/home/start_workout_screen.dart';
import 'package:evalution_note/trainee/home/track_progress_screen.dart';
import 'package:evalution_note/trainee/home/view_videos_screen.dart';
import 'package:evalution_note/trainee/home/workout_pland_detail_screen.dart';
import 'package:evalution_note/widgets/achievement_badge.dart';
import 'package:evalution_note/widgets/quick_action_button.dart';
import 'package:evalution_note/widgets/workout_card.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TraineeHomeScreen extends StatelessWidget {
  static const String id = '/TraineeHomeScreen';

  const TraineeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('لوحة التحكم'),
        backgroundColor: AppTheme.primary,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "مرحبًا بعودتك!",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 24,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              "هل أنت مستعد لتحقيق أهداف جديدة اليوم؟",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 18,
                  ),
            ),
            const SizedBox(height: 24),
            Center(
              child: CircularPercentIndicator(
                radius: 120.0,
                lineWidth: 13.0,
                percent: 0.7,
                center: const Text("70%"),
                progressColor: AppTheme.primary,
                backgroundColor: AppTheme.grey,
                circularStrokeCap: CircularStrokeCap.round,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              "خطط التمرين الخاصة بك",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 18,
                  ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: <Widget>[
                  WorkoutCard(
                    title: 'الخطة أ',
                    description: 'تركيز على الجزء العلوي من الجسم',
                    onTap: () {
                      Navigator.of(context).pushNamed(WorkoutPlanDetailScreen.id);
                    },
                  ),
                  WorkoutCard(
                    title: 'الخطة ب',
                    description: 'تركيز على الجزء السفلي من الجسم',
                    onTap: () {
                      Navigator.of(context).pushNamed(WorkoutPlanDetailScreen.id);
                    },
                  ),
                  WorkoutCard(
                    title: 'الخطة ج',
                    description: 'تمرين مكثف للقلب',
                    onTap: () {
                      Navigator.of(context).pushNamed(WorkoutPlanDetailScreen.id);
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                QuickActionButton(
                  icon: Icons.fitness_center,
                  label: 'بدء التمرين',
                  onTap: () {
                    Navigator.of(context).pushNamed(StartWorkoutScreen.id);
                  },
                ),
                QuickActionButton(
                  icon: Icons.bar_chart,
                  label: 'تتبع التقدم',
                  onTap: () {
                    Navigator.of(context).pushNamed(TrackProgressScreen.id);
                  },
                ),
                QuickActionButton(
                  onTap: () {
                    Navigator.of(context).pushNamed(ViewVideosScreen.id);
                  },
                  icon: Icons.play_circle_fill,
                  label: 'عرض الفيديوهات',
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              "الإنجازات",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            const AchievementBadge(title: "50 تمرينًا مكتملًا"),
            const AchievementBadge(title: "سلسلة لمدة 5 أيام"),
            const AchievementBadge(title: "أفضل مستوى شخصي جديد"),
          ],
        ),
      ),
    );
  }
}
