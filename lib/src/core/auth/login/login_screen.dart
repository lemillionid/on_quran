import 'package:flutter/material.dart';

import '../../../screen/home/home_screen.dart';
import '../forgot_pass_page.dart';
import '../signup_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = false;
  bool _rememberMe = false;
  bool _isPressed = false;

  void _toggleButtonState() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/lockon.png",
              height: 100,
            ),
            const SizedBox(height: 30),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Assalammu'alaikum",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 28,
                    fontFamily: "ArabicCaligraphy",
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Login to continue using the app",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Tajawal",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 25,
              ),
              decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: const BorderRadius.all(Radius.circular(17))),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Username",
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 25,
              ),
              decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: const BorderRadius.all(Radius.circular(17))),
              child: TextFormField(
                obscureText: !_passwordVisible,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                    icon: Icon(_passwordVisible
                        ? Icons.visibility_rounded
                        : Icons.visibility_off_rounded),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: _rememberMe,
                      onChanged: (bool? value) {
                        setState(() {
                          _rememberMe = value!;
                        });
                      },
                    ),
                    const Text('Remember me'),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPassPage()));
                  },
                  child: const Text("Forgot Password?"),
                )
              ],
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: _isPressed
                        ? [Colors.blueAccent, Colors.lightGreen]
                        : [Colors.lightGreen, Colors.blue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(17))),
              child: ElevatedButton(
                onPressed: () {
                  _toggleButtonState();
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  splashFactory: NoSplash.splashFactory,
                  shadowColor: Colors.transparent,
                ),
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Divider(
                    thickness: 2,
                    height: 2,
                    endIndent: 20,
                    color: Colors.grey.shade300,
                  ),
                ),
                const Text("or login with"),
                Expanded(
                  child: Divider(
                    thickness: 2,
                    height: 2,
                    indent: 20,
                    color: Colors.grey.shade300,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 55,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 2,
                      )),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icons/google.png",
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 55,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 2,
                      )),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/icons/facebook.png")),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("don't have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()));
                  },
                  child: const Text("Sign Up"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
