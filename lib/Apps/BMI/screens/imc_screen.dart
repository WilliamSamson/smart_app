import 'package:Nixon/Apps/BMI/helper/gender_enum.dart';
import 'package:Nixon/Apps/BMI/helper/imc_calculator.dart';
import 'package:Nixon/Apps/BMI/screens/result.dart';
import 'package:Nixon/Apps/BMI/widgets/container_aux.dart';
import 'package:Nixon/Apps/BMI/widgets/container_bottom.dart';
import 'package:Nixon/Apps/BMI/widgets/container_middle.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class ImcScreen extends StatefulWidget {
  const ImcScreen({Key key}) : super(key: key);

  @override
  State<ImcScreen> createState() => _ImcScreenState();
}

ImcCalculator imc = ImcCalculator();
Gender selectedGender;
double resultadoImc = 0;
String interpretation = '';

class _ImcScreenState extends State<ImcScreen> {
  bool isMale = false;
  bool isFemale = false;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xFFE7ECEF);
    Offset distanceMale = isMale ? const Offset(10, 10) : const Offset(15, 15);
    double blurMale = isMale ? 5 : 30;
    Offset distanceFemale =
        isFemale ? const Offset(10, 10) : const Offset(15, 15);
    double blurFemale = isFemale ? 5 : 30;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        title: Text(
          'BMI Calculator',
          style: TextStyle(
              fontSize: 20,
              color: Colors.black54,
              letterSpacing: 1.2,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(1.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.Male;
                          if (selectedGender == Gender.Male) {
                            isMale = !isMale;
                            isFemale = false;
                          }
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: backgroundColor,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: blurMale,
                                offset: -distanceMale,
                                color: Colors.white,
                                inset: isMale,
                              ),
                              BoxShadow(
                                blurRadius: blurMale,
                                offset: distanceMale,
                                color: Color(0xFFA7A9AF),
                                inset: isMale,
                              ),
                            ],
                          ),
                          child: SizedBox(
                            width: 210,
                            height: size.height * .22,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 60,
                                  color: Colors.black87,
                                ),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.black87),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.Female;
                        if (selectedGender == Gender.Female) {
                          isFemale = !isFemale;
                          isMale = false;
                        }
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 100),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: backgroundColor,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: blurFemale,
                              offset: -distanceFemale,
                              color: Colors.white,
                              inset: isFemale,
                            ),
                            BoxShadow(
                              blurRadius: blurFemale,
                              offset: distanceFemale,
                              color: Color(0xFFA7A9AF),
                              inset: isFemale,
                            )
                          ],
                        ),
                        child: SizedBox(
                          width: 210,
                          height: size.height * .22,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.female,
                                  size: 60, color: Colors.black87),
                              Text(
                                'Female',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
                ),
              ],
            ),
            //Middle Card
            ContainerMiddle(
              widget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        imc.Height.toString(),
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(146, 0, 0, 0),
                            letterSpacing: 1.2),
                      ),
                    ],
                  ),
                  Slider(
                      value: imc.Height.toDouble(),
                      min: 120,
                      max: 200,
                      thumbColor: backgroundColor,
                      inactiveColor: Colors.white,
                      activeColor: Colors.black54,
                      onChanged: (double newHeight) {
                        setState(
                          () {
                            imc.Height = newHeight.round();
                          },
                        );
                      })
                ],
              ),
            ),
            //Bottom cards
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContainerBottom(
                  text: 'Weight',
                  widget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            imc.Weight.toString(),
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5),
                          ),
                          Text(
                            'kg',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black45,
                                letterSpacing: 1.5),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Button 1
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                imc.Weight--;
                              });
                            },
                            child: ContainerAux(icon: Icons.remove),
                          ),
                          SizedBox(width: 15),
                          //Buttod 2
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                imc.Weight++;
                              });
                            },
                            child: ContainerAux(icon: Icons.add),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                ContainerBottom(
                  text: 'Age',
                  widget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            imc.Age.toString(),
                            style: const TextStyle(
                                fontSize: 35,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5),
                          ),
                          Text(
                            'Years',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black45,
                                letterSpacing: 1.5),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                imc.Age--;
                              });
                            },
                            child: ContainerAux(icon: Icons.remove),
                          ),
                          SizedBox(width: 25),
                          //Button 2
                          GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  imc.Age++;
                                },
                              );
                            },
                            child: ContainerAux(icon: Icons.add),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //Bottom button
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Listener(
                onPointerUp: (_) {
                  setState(
                    () {
                      resultadoImc = imc.calculaImc();
                      if (selectedGender != null) {
                        if (selectedGender == Gender.Male) {
                          interpretation = imc.Male_interpretation();
                        } else if (selectedGender == Gender.Female) {
                          interpretation = imc.Female_interpretation();
                        }
                      }
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (contenxt) => Result(),
                        ),
                      );

                      isPressed = false;
                    },
                  );
                },
                onPointerDown: (_) {
                  setState(
                    () {
                      isPressed = true;
                    },
                  );
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
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Calculate BMI',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

double get resultado {
  return resultadoImc;
}

String get interpreta {
  return interpretation;
}

set setWeight(int newWeight) {
  imc.Weight = newWeight;
}

set setHeight(int newHeight) {
  imc.Height = newHeight;
}

set setAge(int newAge) {
  imc.Age = newAge;
}
