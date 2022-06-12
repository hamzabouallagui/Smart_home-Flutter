import 'package:flutter/material.dart';

import 'energy.dart';
import 'entertainment.dart';
import 'temperature.dart';
import 'water.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Hi Hamza',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RotatedBox(
                    quarterTurns: 135,
                    child: Icon(
                      Icons.bar_chart_rounded,
                      size: 28,
                      color: Colors.indigo,
                    ))
              ],
            ),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  const SizedBox(height: 32),
                  Center(
                    child: Image.asset(
                      'assets/images/banner.png',
                      scale: 1.2,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Center(
                    child: Text(
                      'Smart Home',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 48),
                  const Text(
                    'SERVICES',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _cardMenu(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EnergyPage(),
                            ),
                          );
                        },
                        title: 'ENERGY',
                        icon: 'assets/images/energy.png',
                      ),
                      _cardMenu(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TemperaturePage(),
                            ),
                          );
                        },
                        title: 'TEMPERATURE',
                        icon: 'assets/images/temperature.png',
                        color: Colors.indigoAccent,
                        fontColor: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _cardMenu(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WaterPage(),
                            ),
                          );
                        },
                        title: 'WATER',
                        icon: 'assets/images/water.png',
                      ),
                      _cardMenu(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EntertainmentPage(),
                            ),
                          );
                        },
                        title: 'ENTERTAINMENT',
                        icon: 'assets/images/entertainment.png',
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  Widget _cardMenu({
    required String title,
    required String icon,
    VoidCallback? onTap,
    // ignore: unused_element
    Color color = Colors.white,
    // ignore: unused_element
    Color fontColor = Colors.grey,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 36),
        width: 156,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: color,
        ),
        child: Column(
          children: [
            Image.asset(icon),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: fontColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
