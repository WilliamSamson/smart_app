import 'package:Nixon/Apps/BMI/helper/imc_calculator.dart';
import 'package:Nixon/Apps/BMI/screens/imc_screen.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  Result({
    Key key,
  }) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  bool isPressed = false;
  ImcCalculator imcCalculator = ImcCalculator();

  refresh() {
    setWeight = 50;
    setAge = 20;
    setHeight = 160;
  }

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color.fromARGB(255, 21, 32, 102);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Your Body Mass Index is: ',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                resultadoImc.toStringAsFixed(1),
                style: TextStyle(
                    fontSize: 60,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                interpretation,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.black87),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Listener(
                  onPointerUp: (_) {
                    setState(() {
                      refresh();
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ImcScreen(),
                          ));
                      isPressed = false;
                    });
                  },
                  onPointerDown: (_) {
                    setState(() {
                      isPressed = true;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: backgroundColor,
                        boxShadow: isPressed
                            ? []
                            : [
                                BoxShadow(
                                  blurRadius: 10,
                                  offset: Offset(-5, -5),
                                  color: Colors.white,
                                ),
                                BoxShadow(
                                  blurRadius: 20,
                                  offset: Offset(10, 10),
                                  color: Color(0xFFA7A9AF),
                                ),
                              ]),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Refresh',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.restart_alt,
                            color: Colors.black54,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
