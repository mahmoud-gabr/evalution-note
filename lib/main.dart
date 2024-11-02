import 'package:evalution_note/admin/auth/admin_login.dart';
import 'package:evalution_note/admin/dashboard/add_form_user_screen.dart';
import 'package:evalution_note/admin/dashboard/admin_app_settings_screen.dart';
import 'package:evalution_note/admin/dashboard/admin_dashboard_screen.dart';
import 'package:evalution_note/admin/dashboard/mange_user_screen.dart';
import 'package:evalution_note/admin/dashboard/workout_content_mangement_screen.dart';
import 'package:evalution_note/trainee/auth/trainee_auth_screen.dart';
import 'package:evalution_note/trainee/home/start_workout_screen.dart';
import 'package:evalution_note/trainee/home/track_progress_screen.dart';
import 'package:evalution_note/trainee/home/trainee_home_screen.dart';
import 'package:evalution_note/trainee/home/view_videos_screen.dart';
import 'package:evalution_note/trainee/home/workout_pland_detail_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EvalutioNote());
}

class EvalutioNote extends StatelessWidget {
  const EvalutioNote({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AdminLogin.id: (context) => const AdminLogin(),
        AdminDashboardScreen.id: (context) => const AdminDashboardScreen(),
        MangeUser.id: (context) => const MangeUser(),
        AddUserFormScreen.id: (context) => const AddUserFormScreen(),
        WorkoutContentManagementScreen.id: (context) =>
            const WorkoutContentManagementScreen(),
        AdminAppSettingsScreen.id: (context) => const AdminAppSettingsScreen(),
        TraineeAuthScreen.id: (context) => const TraineeAuthScreen(),
        TraineeHomeScreen.id: (context) => const TraineeHomeScreen(),
        WorkoutPlanDetailScreen.id: (context) =>
            const WorkoutPlanDetailScreen(),
        StartWorkoutScreen.id: (context) => const StartWorkoutScreen(),
        TrackProgressScreen.id: (context) => const TrackProgressScreen(),
        ViewVideosScreen.id: (context) => const ViewVideosScreen()
      },
      initialRoute: TraineeAuthScreen.id,
    );
  }
}
