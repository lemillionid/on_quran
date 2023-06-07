import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/login_illus.png",
                height: 300,
                width: 300,
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Assalammu'alaikum",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Roboto",
                            ),
                          ),
                          Text(
                            "Login to continue using the app",
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto",
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.lock_open_rounded,
                        size: 25,
                        color: Colors.blue.shade800,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextField()
            ],
          ),
        ),
      ),
    );
  }
}
