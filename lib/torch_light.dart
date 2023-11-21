import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class TorchLite extends StatefulWidget {
  const TorchLite({super.key});

  @override
  State<TorchLite> createState() => _TorchLiteState();
}

class _TorchLiteState extends State<TorchLite> {
  final bgColor = Colors.purple;
  final textColor = Colors.white;
  var isActive = false;
  var controller = TorchController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 46, 44, 46),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "TORCH LITE",
          style: TextStyle(color: textColor),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    isActive ? 'assets/on1.png' : 'assets/off.png',
                    width: 250,
                    height: 250,
                    color: isActive ? null : textColor.withOpacity(0.2),
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  CircleAvatar(
                    minRadius: 30,
                    maxRadius: 45,
                    child: Transform.scale(
                      scale: 2.0,
                      child: IconButton(
                          onPressed: () {
                            controller.toggle();
                            isActive = !isActive;
                            setState(() {});
                          },
                          icon: const Icon(Icons.power_settings_new)),
                    ),
                  ),
                ],
              ),
            ),
          )),
          Text(
            "Developed by antoremin101@gmail.com",
            style: TextStyle(
              color: textColor,
              fontSize: 14.0,
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
        ],
      ),
    );
  }
}