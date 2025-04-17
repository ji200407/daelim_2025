import 'package:flutter/material.dart';

class WhiteBox extends StatelessWidget {
  final EdgeInsetsGeometry? padding; //final:번하는 변수
  final Widget child;

  const WhiteBox({
    super.key,
    this.padding,
    required this.child,
  }); //const: 변하지 않는 함수 required(this앞에 붙음) 반드시 요구되는 상황에서

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}
