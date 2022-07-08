import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/widgets/custom_text_widget.dart';

import '../provider/auth_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 231, 231),
      appBar: AppBar(
        title: const Text('Login Screen'),
        elevation: 1.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextField(
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
              hintText: "email",
              icon: Icons.email_outlined,
            ),
            const SizedBox(height: 18.0),
            CustomTextField(
              keyboardType: TextInputType.emailAddress,
              controller: _passwordController,
              hintText: "password",
              icon: Icons.lock_outlined,
            ),
            const SizedBox(height: 28.0),
            InkWell(
              onTap: () {
                authProvider.userLogin(
                  _emailController.text,
                  _passwordController.text,
                );
              },
              child: authProvider.loading
                  ? const CircularProgressIndicator(
                      color: Colors.white,
                      backgroundColor: Colors.pink,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Container(
                        height: 47.0,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: Colors.blue,
                        ),
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
