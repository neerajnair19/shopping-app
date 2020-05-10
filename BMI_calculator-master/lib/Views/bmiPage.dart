import 'package:flutter/material.dart';
import 'package:bmi_calculator/Components/card.dart';
import 'package:bmi_calculator/Components/cardIcon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/Components/customRawMaterialButton.dart';
import 'package:bmi_calculator/Views/resultPage.dart';
import 'package:bmi_calculator/Theme/style.dart';
import 'package:bmi_calculator/calculator_bmi.dart';

const disabledColour = Color(0xFF111328);
const activeColour = Color(0xFF1D1E33);
var cardColorMale = Color(0xFF111328);
var cardColorFemale = Color(0xFF111328);

//data
Gender selectedGender;
int height = 180;
int weight = 74;
int age = 18;

enum Gender {
  male,
  female,
}

class BMIPage extends StatefulWidget {
  @override
  _BMIPageState createState() => _BMIPageState();
}

class _BMIPageState extends State<BMIPage> {
  void updateGenderCard(Gender gender) {
    setState(() {
      if (gender == Gender.male) {
        if (cardColorMale == activeColour) {
          cardColorMale = disabledColour;
        } else {
          cardColorMale = activeColour;
          cardColorFemale = disabledColour;
        }

        selectedGender = Gender.male;
      }

      if (gender == Gender.female) {
        if (cardColorFemale == activeColour) {
          cardColorFemale = disabledColour;
        } else {
          cardColorFemale = activeColour;
          cardColorMale = disabledColour;
        }

        selectedGender = Gender.female;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        updateGenderCard(Gender.male);
                      },
                      child: ReusableCard(
                        cardColorMale,
                        cardIcon(FontAwesomeIcons.mars, "MALE"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        updateGenderCard(Gender.female);
                      },
                      child: ReusableCard(
                        cardColorFemale,
                        cardIcon(FontAwesomeIcons.venus, "FEMALE"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                Color(0xFF1D1E33),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "HEIGHT",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF8D8E98)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      Color(0xFF1D1E33),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "WEIGHT",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF8D8E98)),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      Color(0xFF1D1E33),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "AGE",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF8D8E98)),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                BMICalculator bmiCalculator = new BMICalculator(height, weight);
                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(bmiCalculator)));
              },
              child: Container(
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(bottom: 10),
                height: 80,
                child: Center(
                  child: Text(
                    'CALCULATE BMI',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
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
