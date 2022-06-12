import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EnergyPage extends StatefulWidget {
  const EnergyPage({Key? key}) : super(key: key);

  @override
  _EnergyPageState createState() => _EnergyPageState();
}

class _EnergyPageState extends State<EnergyPage> {
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
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.indigo,
                  ),
                ),
                const RotatedBox(
                  quarterTurns: 135,
                  child: Icon(
                    Icons.bar_chart_rounded,
                    color: Colors.indigo,
                    size: 28,
                  ),
                )
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _cardMenu(
                  onTap: () {
                    setState(() {
                      Colors.red;
                    });
                  },
                  title: 'KITCHEN',
                  icon: 'assets/images/kitchen.png',
                ),
                _cardMenu(
                  title: 'BEDROOM',
                  icon: 'assets/images/bedroom.png',
                ),
              ],
            ),
            const SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _cardMenu(
                  title: 'LIVING ROOM',
                  icon: 'assets/images/livingroom.png',
                ),
                _cardMenu(
                  title: 'GARDEN',
                  icon: 'assets/images/garden.png',
                ),
              ],
            ),
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
