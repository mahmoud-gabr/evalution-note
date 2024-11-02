import 'package:evalution_note/app_theme.dart';
import 'package:evalution_note/trainee/home/trainee_home_screen.dart';
import 'package:evalution_note/widgets/deafult_elevated_botton.dart';
import 'package:evalution_note/widgets/deafult_text_form_field.dart';
import 'package:flutter/material.dart';

class TraineeAuthScreen extends StatefulWidget {
  static const String id = '/TraineeAuthScreen';
  const TraineeAuthScreen({super.key});

  @override
  TraineeAuthScreenState createState() => TraineeAuthScreenState();
}

class TraineeAuthScreenState extends State<TraineeAuthScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final TextEditingController loginEmailController = TextEditingController();
  final TextEditingController loginPasswordController = TextEditingController();
  final TextEditingController signupEmailController = TextEditingController();
  final TextEditingController signupPasswordController =
      TextEditingController();
  final TextEditingController signupNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    loginEmailController.dispose();
    loginPasswordController.dispose();
    signupEmailController.dispose();
    signupPasswordController.dispose();
    signupNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trainee Authentication'),
        centerTitle: true,
        backgroundColor: AppTheme.primary,
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(text: 'Login'),
            Tab(text: 'Sign Up'),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(height: 32),
                  Image.asset(
                    'assets/images/logo.png',
                    height: MediaQuery.of(context).size.height * .25,
                  ),
                  const SizedBox(height: 64),
                  DeafaultTextFormField(
                    controller: loginEmailController,
                    label: 'Email',
                  ),
                  const SizedBox(height: 16),
                  DeafaultTextFormField(
                    label: 'Password',
                    controller: loginPasswordController,
                    isPassword: true,
                  ),
                  const SizedBox(height: 16),
                  DeafaultElevetedBotton(
                    label: 'Login',
                    onPressed: () {
                      Navigator.of(context).pushNamed(TraineeHomeScreen.id);
                    },
                  ),
                ],
              ),
            ),
          ),
          // Signup Form
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(height: 32),
                  Image.asset(
                    'assets/images/logo.png',
                    height: MediaQuery.of(context).size.height * .25,
                  ),
                  const SizedBox(height: 64),
                  DeafaultTextFormField(
                    controller: signupNameController,
                    label: 'Name',
                  ),
                  const SizedBox(height: 16),
                  DeafaultTextFormField(
                    controller: signupEmailController,
                    label: 'Email',
                  ),
                  const SizedBox(height: 16),
                  DeafaultTextFormField(
                    label: 'Password',
                    controller: signupPasswordController,
                    isPassword: true,
                  ),
                  const SizedBox(height: 16),
                  DeafaultElevetedBotton(
                    label: 'Sign Up',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
