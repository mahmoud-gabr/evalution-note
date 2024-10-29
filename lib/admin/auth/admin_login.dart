import 'package:evalution_note/admin/dashboard/admin_dashboard_screen.dart';
import 'package:evalution_note/app_theme.dart';
import 'package:evalution_note/widgets/deafult_elevated_botton.dart';
import 'package:evalution_note/widgets/deafult_text_form_field.dart';
import 'package:flutter/material.dart';

class AdminLogin extends StatefulWidget {
  static const String id = '/AdminLogin';
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  TextEditingController passwordControler = TextEditingController();
  TextEditingController emailControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Admin Login'),
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
                  controller: emailControler,
                  label: 'Email',
                ),
                const SizedBox(height: 16),
                DeafaultTextFormField(
                  label: 'Password',
                  controller: passwordControler,
                ),
                const SizedBox(height: 16),
                DeafaultElevetedBotton(
                  label: 'Login',
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AdminDashboardScreen.id,
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
