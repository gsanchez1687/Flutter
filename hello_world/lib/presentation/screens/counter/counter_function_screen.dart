import 'package:flutter/material.dart';

class CounterfunctionsScreen extends StatefulWidget {
  const CounterfunctionsScreen({super.key});

  @override
  State<CounterfunctionsScreen> createState() => _CounterfunctionsScreenState();
}

class _CounterfunctionsScreenState extends State<CounterfunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            if (clickCounter == 1)
              const Text(
                'Click',
                style: TextStyle(fontSize: 15),
              ),
            if (clickCounter > 1)
              const Text(
                'Clicks',
                style: TextStyle(fontSize: 15),
              ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustonBotton(
            icon: Icons.refresh_outlined,
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
            ),
          const SizedBox(height: 10),
          CustonBotton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
            ),
          const SizedBox(height: 10),
          CustonBotton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              setState(() {
                if(clickCounter > 0){
                  clickCounter--;
                }
              });
            },
            ),
        ],
      ),
    );
  }
}

class CustonBotton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustonBotton({
    super.key,
    required this.icon, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0, //segundo boton (-)
      shape: const StadiumBorder(),
      enableFeedback: true,
      onPressed: onPressed,
      hoverElevation: 10,
      child: Icon(icon),
    );
  }
}
