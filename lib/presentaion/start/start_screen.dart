import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  //타이틀 위젯
  Widget _buildAppName() {
    return Text(
      "BMI Calculator",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 30,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  //타이틀

  Widget _buildTitle() {
    return Text(
      'Get Started with\nTracking Your Health!',
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  //설명명
  Widget _buildDescription() {
    return Text(
      'Calculate your BMI and stay on top of your wellness journey, effortlessly.',
      style: TextStyle(fontSize: 15, color: Color(0xFFC6C3F9)),
    );
  }

  //버튼
  Widget _buildStartButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(onPressed: () {}, child: Text('Get Started')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6C63FF),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 280,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            // padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, //상하 중간간
              children: [
                _buildAppName(),
                SizedBox(height: 15),
                Image.asset('assets/images/bike.png'),
                SizedBox(height: 95),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTitle(),
                    SizedBox(height: 15),
                    _buildDescription(),
                  ],
                ),
                SizedBox(height: 40),
                _buildStartButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
