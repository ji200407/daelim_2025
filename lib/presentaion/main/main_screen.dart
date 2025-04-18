import 'package:daelim_2025/app/router/app_route.dart';
import 'package:daelim_2025/presentaion/common/widgets/white_box.dart';
import 'package:daelim_2025/presentaion/main/widgets/gender_box.dart';
import 'package:daelim_2025/presentaion/main/widgets/height_box.dart';
import 'package:daelim_2025/presentaion/main/widgets/in_de_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainScreen> {
  int _age = 0;
  int _weight = 0;
  double _height = 100.0;
  Gender _gender = Gender.male;
  //bmi계산산
  void _onCalculated() {
    debugPrint('나이:$_age');
    debugPrint('몸무게:$_weight');
    debugPrint('키키:$_height');
    debugPrint('성별:$_gender');
    final chHeight = _height.round() / 100;
    final bmi = _weight / (chHeight * chHeight);
    debugPrint('bmi:$bmi');

    context.pushNamed(
      AppRoute.result.name,
      queryParameters: {'bmi': bmi.toStringAsFixed(2)},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F3FF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 90),
          child: Column(
            spacing: 25,
            children: [
              SizedBox(height: 35),
              Text('BMI CALCULATOR', style: TextStyle(fontSize: 20)),
              //#region 나이 ,몸무게 입력력
              Row(
                spacing: 20,
                children: [
                  Expanded(
                    child: InDeContainer(
                      title: 'Age',
                      value: _age,
                      onMinus: () {
                        if (_age == 0) return;
                        setState(() => _age--);
                        debugPrint('Age:마이너스 클릭');
                      },
                      onPlus: () {
                        setState(() {
                          setState(() => _age++);
                        });
                        debugPrint('Age:플러스 클릭');
                      },
                    ),
                  ),
                  Expanded(
                    child: InDeContainer(
                      title: 'Weight(KG)',
                      value: _weight,
                      onMinus: () {
                        if (_weight < 0) {
                          setState(() {
                            _weight--;
                          });
                          debugPrint('Weight(KG):마이너스 클릭');
                        }
                      },
                      onPlus: () {
                        setState(() {
                          _weight++;
                        });
                        debugPrint('Weight(KG):플러스 클릭');
                      },
                    ),
                  ),
                ],
              ), //#endregion
              // Expanded(
              //   child: WhiteBox(
              //     padding: EdgeInsets.all(27),
              //     child: SizedBox.shrink(),
              //   ),
              // ),
              // Expanded(
              //   child: WhiteBox(
              //     padding: EdgeInsets.all(27),
              //     child: SizedBox.shrink(),
              //   ),
              // ),
              //  SizedBox(width: double.infinity, height: 75),

              //#region키 입력
              HeightBox(
                onChanged: (height) {
                  _height = height;
                },
              ),
              //#edndregion
              //#region성별
              GenderBox(
                onChanged: (gender) {
                  _gender = gender;
                },
              ),
              SizedBox(
                width: double.infinity,
                height: 75,
                child: ElevatedButton(
                  onPressed: _onCalculated,
                  child: Text('Calculate BMI'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
