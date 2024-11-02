import 'package:evalution_note/trainer/home/trainer_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:evalution_note/app_theme.dart';
import 'package:evalution_note/widgets/deafult_elevated_botton.dart';
import 'package:evalution_note/widgets/deafult_text_form_field.dart';

class TrainerLoginScreen extends StatefulWidget {
  static const String id = '/TrainerLoginScreen';

  const TrainerLoginScreen({super.key});

  @override
  State<TrainerLoginScreen> createState() => _TrainerLoginScreenState();
}

class _TrainerLoginScreenState extends State<TrainerLoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trainer Login'),
        centerTitle: true,
        backgroundColor: AppTheme.primary,
      ),
      body: Padding(
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
                controller: emailController,
                label: 'Email',
              ),
              const SizedBox(height: 16),
              DeafaultTextFormField(
                controller: passwordController,
                label: 'Password',
                isPassword: true,
              ),
              const SizedBox(height: 16),
              DeafaultElevetedBotton(
                label: 'Login',
                onPressed: () {
                  Navigator.pushNamed(context, TrainerHomeScreen.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
