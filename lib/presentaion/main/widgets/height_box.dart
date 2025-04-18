import 'package:daelim_2025/presentaion/common/widgets/white_box.dart';
import 'package:flutter/material.dart';

class HeightBox extends StatefulWidget {
  final Function(double height) onChanged;
  const HeightBox({super.key, required this.onChanged});

  @override
  State<HeightBox> createState() => _HeightBoxState();
}

class _HeightBoxState extends State<HeightBox> {
  double _height = 100.0;

  // void _decreaseHeight() {
  //   setState(() {
  //     _height--;
  //   });
  // }

  // void _increaseHeight() {
  //   setState(() {
  //     _height++;
  //   });
  // }

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
            '${_height.toStringAsFixed(1)}', //뒤에 .뒤로 더 붙이려면 {} 넣어야 함함
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
            activeColor: Color(0xFF6C63FF),
            onChanged: (double value) {
              //1.이곳
              //function
              setState(() {
                _height = value;
              });
              //2.이곳(여기가 더 좋음ui랑 분리)
              widget.onChanged(_height);
            },
          ),
        ],
      ),
    );
  }
}
