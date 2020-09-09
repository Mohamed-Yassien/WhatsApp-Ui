import 'package:flutter/material.dart';
import './home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4)).then(
      (value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return HomeScreen();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/whats.png'),
              backgroundColor: Colors.white,
              radius: 40,
            ),
            SizedBox(
              height: 300,
            ),
            Column(
              children: [
                Text(
                  'from',
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'FACEBOOK',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.7,
                      fontSize: 20,
                      color: Colors.green),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
