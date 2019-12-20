import 'package:flutter/material.dart';
import 'package:flutter_calc/customButton.dart';
import 'package:auto_size_text/auto_size_text.dart';
class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => new _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String display = ""; 
  double result = 0;
  String val1 = "", val2 = "", operator = "";
  bool op = false; // checks whether any operator is pressed or not
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
        //display screen starts
              Flexible(
                flex: 1,
                child: new Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[  
                          AutoSizeText(
                            "$display",
                            //overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                            minFontSize: 5,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 50,
                            ),
                          ),
                          
                          Text(                           //prints the RESULT on the screen
                            "=$result",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ]),
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.white),
              ),//display screen ends
              
              Flexible(                               //keyboard starts
                flex: 1,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.white,
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Row(                       // 1st row of keyboard starts
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                flex: 1,
                                child: GestureDetector(             //AC Button
                                  child: CustomButton("AC"),
                                  onTap: () {
                                    setState(() {
                                      reset();
                                    });
                                  },
                                ),
                              ),
                              Flexible(                           //+/- Button
                                flex: 1,    
                                child: GestureDetector(
                                  child: CustomButton("+/-"),
                                  onTap: () {
                                    numbers_setState("-");
                                  },
                                ),
                              ),
                              Flexible(                           //% Button
                                flex: 1,
                                child: GestureDetector(
                                  child: CustomButton("%"),
                                  onTap: () {
                                    percentage();
                                  },
                                ),
                              ),
                              Flexible(                       //   / button
                                flex: 1,
                                child: GestureDetector(
                                    child: CustomButton("/"),
                                    onTap: () {
                                      operation("/");
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ),                //1st row of keyboard ends
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Row(                     //2nd row of keyboard starts
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                flex: 1,
                                child: GestureDetector(
                                  child: CustomButton("7"),       // 7 Button
                                  onTap: () {
                                    numbers_setState("7");
                                  },
                                ),
                              ),
                              Flexible(                           // 8 Button
                                flex: 1,
                                child: GestureDetector(
                                  child: CustomButton("8"),
                                  onTap: () {
                                    numbers_setState("8");
                                  },
                                ),
                              ),
                              Flexible(                         //9 Button
                                flex: 1,
                                child: GestureDetector(
                                  child: CustomButton("9"),
                                  onTap: () {
                                    numbers_setState("9");
                                  },
                                ),
                              ),
                              Flexible(                        // X button
                                flex: 1,
                                child: GestureDetector(
                                  child: CustomButton("X"),
                                  onTap: () {
                                    operation("X");
                                  },
                                ),
                              ),
                            ],
                          ),                                   //2nd row ends
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Row(                 // 3rd row starts
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(                               // 4 Button
                                flex: 1,
                                child: GestureDetector(     
                                  child: CustomButton("4"),
                                  onTap: () {
                                    numbers_setState("4");
                                  },
                                ),
                              ),
                              Flexible(                             // 5 Button
                                flex: 1,
                                child: GestureDetector(
                                  child: CustomButton("5"),
                                  onTap: () {
                                    numbers_setState("5");
                                  },
                                ),
                              ),
                              Flexible(                             // 6 Button
                                flex: 1,
                                child: GestureDetector(
                                  child: CustomButton("6"),
                                  onTap: () {
                                    numbers_setState("6");
                                  },
                                ),
                              ),
                              Flexible(                           // - Button
                                flex: 1,
                                child: GestureDetector(
                                  child: CustomButton("-"),
                                  onTap: () {
                                    operation("-");
                                  },
                                ),
                              ),
                            ],
                          ),                  //3rd row ends 
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Row(               //4th row starts
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(                           // 1 Button 
                                flex: 1,
                                child: GestureDetector(
                                  child: CustomButton("1"),
                                  onTap: () {
                                    numbers_setState("1");
                                  },
                                ),
                              ),
                              Flexible(                           // 2 Button
                                flex: 1,
                                child: GestureDetector(
                                  child: CustomButton("2"),
                                  onTap: () {
                                    numbers_setState("2");
                                  },
                                ),
                              ),
                              Flexible(                         // 3 Button 
                                flex: 1,
                                child: GestureDetector(
                                  child: CustomButton("3"),
                                  onTap: () {
                                    numbers_setState("3");
                                  },
                                ),
                              ),
                              Flexible(                          // + Button
                                flex: 1,
                                child: GestureDetector(
                                    child: CustomButton("+"),
                                    onTap: () {
                                      operation("+");
                                    }),
                              ),
                            ],
                          ),                              // 4th ends
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Row(                 // 5th row starts
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(                     // 0 Button
                                flex: 2,
                                child: GestureDetector(
                                  child: CustomButton("0"),
                                  onTap: () {
                                    numbers_setState("0");
                                  },
                                ),
                              ),
                              Flexible(                 // . Button
                                flex: 1,
                                child: GestureDetector(
                                  child: CustomButton("."),
                                  onTap: () {
                                    numbers_setState(".");
                                  },
                                ),
                              ),
                              Flexible(               // = Button
                                flex: 1,
                                child: GestureDetector(
                                  child: CustomButton("="),
                                  onTap: () {
                                    setState(() {
                                      getResult();
                                      display = result.toString();
                                      val1 = result.toString();
                                      val2 = "";
                                      op = false;
                                      operator = "=";
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),        // 5th row ends
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
//function to be called when % is pressed
  void percentage() {
    setState(() {
      if (operator == "=" || !op) {
        val1 = (double.parse(val1) / 100).toString();
        display = val1;
        result = double.parse(val1);
      }
    });
  }
 // function to be called when any number is pressed  
  void numbers_setState(String x) {
    setState(() {
      if (!op && operator == "=") reset();
      display = display + x;
      if (op) {
        val2 = val2 + x;
        getResult();
      } else {
        val1 = val1 + x;
        result = double.parse(val1);
      }
    });
  }
// function to reset the calculator
  void reset() {
    display = "";
    val1 = "";
    val2 = "";
    result = 0;
    operator = "";
    op = false;
  }
// function to be called when any operator is pressed except =
  void operation(String x) {
    setState(() {
      display = display + x;
      if (op) {
        val1 = result.toString();
        val2 = "";
        operator = x;
      } else {
        operator = x;
        op = true;
      }
    });
  }
// function to compute result
  void getResult() {
    switch (operator) {
      case "+":
        {
          result = double.parse(val1) + double.parse(val2);
          break;
        }
      case "-":
        {
          result = double.parse(val1) - double.parse(val2);
          break;
        }
      case "X":
        {
          result = double.parse(val1) * double.parse(val2);
          break;
        }
      case "/":
        {
          result = double.parse(val1) / double.parse(val2);
          break;
        }
    }
  }
}
