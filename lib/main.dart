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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget
{
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
                      child: Container(
                        color: Colors.teal[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_circle,
                              size: 100.0,
                            ),
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
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_circle,
                              size: 100.0,
                            ),
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '160',
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.w700),
                        ),
                        Text('CM'),
                      ],
                    ),
                    Slider(
                      value: 160.0,
                      min: 120.0,
                      max: 220.0,
                      activeColor: Colors.teal,
                      inactiveColor: Colors.grey[200],
                      onChanged: (value) {
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
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '160',
                              style: TextStyle(
                                  fontSize: 30.0, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){},
                                  backgroundColor: Colors.teal,
                                  child: Icon(
                                    Icons.minimize,
                                  ),
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                FloatingActionButton(
                                  onPressed: (){},
                                  backgroundColor: Colors.teal,
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
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
                            Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '20',
                              style: TextStyle(
                                  fontSize: 30.0, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){},
                                  backgroundColor: Colors.teal,
                                  child: Icon(
                                    Icons.minimize,
                                  ),
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                FloatingActionButton(
                                  onPressed: (){},
                                  backgroundColor: Colors.teal,
                                  child: Icon(
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
            height: 40.0,
            child: MaterialButton(
              onPressed: () {},
              child: const Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}