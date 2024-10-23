import 'package:flutter/material.dart';

class BMI_Res extends StatelessWidget {

  String gender = 'male';
  double age = 20;
  double res = 3;

  BMI_Res({
    required this.gender,
    required this.age,
    required this.res,
});

  TextStyle st = const TextStyle(
    color: Colors.teal,
    fontSize: 40,
    fontWeight: FontWeight.bold
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI RESULTS'),
        backgroundColor: Colors.teal[200],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Gender : $gender',style: st,),
            Text('Age : $age',style: st,),
            Text('Result : ${res.round()}',style: st,),
          ],
        ),
      ),
    );
  }
}
