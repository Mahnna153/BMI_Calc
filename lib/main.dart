
import 'dart:math';

import 'package:bmi_cal/bmi_res.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget
{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isMale = true;
  double height = 120;

  double weight = 70;
  double age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          color: isMale ? Colors.teal[100] : Colors.white ,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('images/male.png'),height: 100,width: 100,),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          color: isMale ?Colors.white: Colors.teal[100],
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          Image(image: AssetImage('images/female.png'),height: 100,width: 100,),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.w700),
                        ),
                        Text('CM'),
                      ],
                    ),
                    Slider(
                      value:height,
                      min: 120.0,
                      max: 220.0,
                      activeColor: Colors.teal,
                      inactiveColor: Colors.grey[200],
                      onChanged: (value) {
                        setState(() {
                          height=value;
                        });
                        print(value.round());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                             Text(
                              '${weight}',
                              style: TextStyle(
                                  fontSize: 30.0, fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: 'weight-',
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  backgroundColor: Colors.teal,
                                  child: const Icon(
                                    Icons.minimize,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15.0,
                                ),
                                FloatingActionButton(
                                  heroTag: 'weight+',
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  backgroundColor: Colors.teal,
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                             Text(
                              '${age}',
                              style: TextStyle(
                                  fontSize: 30.0, fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: 'age-',
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  backgroundColor: Colors.teal,
                                  child: const Icon(
                                    Icons.minimize,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15.0,
                                ),
                                FloatingActionButton(
                                  heroTag: 'age+',
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  backgroundColor: Colors.teal,
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.tealAccent,
            height: 60.0,
            child: MaterialButton(
              onPressed: () {
                var result = weight / pow(height/100, 2) ;
                Navigator.push(context, MaterialPageRoute(builder: (Context) => BMI_Res(
gender: isMale ? 'Male' : 'Female',age: age, res: result,
                )));
              },
              child: const Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}