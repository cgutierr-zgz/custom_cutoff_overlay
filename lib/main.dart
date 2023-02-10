import 'package:flutter/material.dart';

import 'custom_overlay.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            const CustomBorder(),
            const SizedBox.expand(),
            Center(
                child: Transform.rotate(
              angle: -0.5,
              child: const Text(
                'Custom                  !',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
            const Buttons(),
          ],
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(
              Icons.flash_on,
              color: Colors.purple,
            ),
            onPressed: () {},
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(
              Icons.camera_alt,
              color: Colors.purple,
            ),
            onPressed: () {},
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(
              Icons.flip_camera_android,
              color: Colors.purple,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
