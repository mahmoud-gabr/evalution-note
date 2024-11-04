import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:evalution_note/admin/auth/admin_login.dart';
import 'package:evalution_note/admin/dashboard/add_user_form_screen.dart';
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
import 'package:evalution_note/trainer/auth/trainer_login_screen.dart';
import 'package:evalution_note/trainer/home/trainer_home_screen.dart';
import 'package:evalution_note/trainer/home/trainer_mange_video_screen.dart';
import 'package:evalution_note/trainer/home/trainer_profile_screen.dart';
import 'package:evalution_note/trainer/home/trainer_workout_screen.dart';

void main() {
  runApp(const EvalutioNote());
}

class EvalutioNote extends StatelessWidget {
  const EvalutioNote({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: const [
        Locale('ar', ''), // Arabic
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('ar'), // Set Arabic as the default language
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
        ViewVideosScreen.id: (context) => const ViewVideosScreen(),
        TrainerLoginScreen.id: (context) => const TrainerLoginScreen(),
        TrainerHomeScreen.id: (context) => const TrainerHomeScreen(),
        TrainerProfileScreen.id: (context) => const TrainerProfileScreen(),
        WorkoutProgramDesignScreen.id: (context) =>
            const WorkoutProgramDesignScreen(),
        VideoManagementScreen.id: (context) => const VideoManagementScreen(),
      },
      initialRoute: AdminLogin.id,
    );
  }
}
