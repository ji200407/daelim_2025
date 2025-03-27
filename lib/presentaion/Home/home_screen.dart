import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _count = 0;

  void _handleIncreaseCount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('FlutterDemo')),

      floatingActionButton: FloatingActionButton(
        onPressed:
            _handleIncreaseCount, //onPressed(){_handleIncreaseCount()}   ->  onPressed()=>_handleIncreaseCount() ->현재재
        child: Icon(Icons.add),
      ),

      body: SafeArea(
        child: SizedBox(
          width: double.infinity, //무한(에러날수있음)
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('버튼 클릭 시 횟수 증가', style: TextStyle(fontSize: 34)),
              Text('$_count', style: TextStyle(fontSize: 40)),
            ],
          ),
        ),
      ),
    );
  }
}
