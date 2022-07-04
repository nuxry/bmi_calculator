import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomConatainerHeight = 50.0;
const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: const <Widget>[
                Expanded(
                  child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      )),
                ),
                Expanded(
                  child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.venus, label: 'FEMALE')),
                )
              ],
            )),
            Expanded(child: Container(
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: activeCardColour,
                borderRadius: BorderRadius.circular(10.0),
              ),
            )),
            Expanded(
                child: Column(
              children: <Widget>[
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: activeCardColour,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                )),
                Expanded(child: Container(
                  margin: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: activeCardColour,
                    borderRadius: BorderRadius.circular(10.0),                  ),
                )),
              ],
            )),
            Container(
              color: bottomContainerColour,
              margin: const EdgeInsets.only(top: 1.0),
              width: double.infinity,
              height: bottomConatainerHeight,
            ),
          ],
        ),
      ),
    );
  }
}
