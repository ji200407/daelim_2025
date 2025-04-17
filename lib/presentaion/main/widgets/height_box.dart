import 'package:daelim_2025/presentaion/common/widgets/white_box.dart';
import 'package:flutter/material.dart';

class HeightBox extends StatefulWidget {
  const HeightBox({super.key});

  @override
  State<HeightBox> createState() => _HeightBoxState();
}

class _HeightBoxState extends State<HeightBox> {
  double _height = 100.0;

  void _decreaseHeight() {
    setState(() {
      _height--;
    });
  }

  void _increaseHeight() {
    setState(() {
      _height++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WhiteBox(
      padding: EdgeInsets.all(18),
      child: Column(
        children: [
          //타이틀
          Text('Height(CM)', style: TextStyle(fontSize: 18)),
          //숫자
          Text(
            '$_height',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6C63FF),
            ),
          ),

          //slider
          Slider(
            year2023: false,
            value: _height,
            min: 50.0,
            max: 300.0,
            onChanged: (double value) {
              setState(() {
                _height = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
