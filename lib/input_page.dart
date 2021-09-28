import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'card_content.dart';

const bottomContainerHeight = 80;
const activeColor = Color(0xff546E7A);
const inActiveColor = Color(0xff546E6A);
const bottomContainerColor = Color(0xffE91E62);

enum Gender { male, female, hold }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.hold;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        leading: Icon(Icons.menu),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      selectedGender == Gender.male
                          ? inActiveColor
                          : activeColor,
                      CustomIconWidget(FontAwesomeIcons.male, 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      selectedGender == Gender.female
                          ? inActiveColor
                          : activeColor,
                      CustomIconWidget(FontAwesomeIcons.female, 'FEMALE'),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              activeColor,
              Column(
                children: [
                  Text('Height'),
                  Slider(value: 170, onChanged: onChanged)
                ],
              ),
            ),
          ),
          /*      Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(activeColor, CustomIconWidget()),
                ),
                Expanded(
                  child: ReusableCard(activeColor, CustomIconWidget()),
                )
              ],
            ),
          ),*/
          Container(
            color: bottomContainerColor,
            width: double.infinity,
            height: 80.0,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}
