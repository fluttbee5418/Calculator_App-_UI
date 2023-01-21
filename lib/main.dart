import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Calculator(),


    );
  }
}
class Calculator  extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}


class _CalculatorState extends State<Calculator > {

  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(

        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(30),
              backgroundColor: btncolor,
              foregroundColor: btncolor,

            ),
            child: Text(btntxt,
              style: TextStyle(
                fontSize: 30,
                color: txtcolor,

              ),


            )

        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //calculator  display
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(

                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(padding: EdgeInsets.all(10.0),
                    child: Text('0',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 100,
                      ),

                    ),

                  ),


                ],

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //buttons function
                calcbutton("AC", Colors.red, Colors.white),
                calcbutton("+/-", Colors.amber, Colors.white),
                calcbutton("%", Colors.amber, Colors.white),
                calcbutton("/", Colors.amber, Colors.white),


              ],
            ),
            SizedBox(height: 10,),


            //second row

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //buttons function
                calcbutton("7", Colors.grey, Colors.black),
                calcbutton("8", Colors.grey, Colors.black),
                calcbutton("9", Colors.grey, Colors.black),
                calcbutton("×", Colors.amber, Colors.white),


              ],
            ),
            SizedBox(height: 10,),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //buttons function
                calcbutton("6", Colors.grey, Colors.black),
                calcbutton("5", Colors.grey, Colors.black),
                calcbutton("4", Colors.grey, Colors.black),
                calcbutton("-", Colors.amber, Colors.white),


              ],
            ),
            SizedBox(height: 10,),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //buttons function
                calcbutton("3", Colors.grey, Colors.black),
                calcbutton("2", Colors.grey, Colors.black),
                calcbutton("1", Colors.grey, Colors.black),
                calcbutton("+", Colors.amber, Colors.white),


              ],
            ),
            SizedBox(height: 10,),


            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(


                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),

                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.grey,
                        padding: EdgeInsets.fromLTRB(34, 20, 128, 10),

                      ),


                      child: const Text("0", style: TextStyle(
                        fontSize: 50,
                        color: Colors.black,
                      ),)

                  ),

                  calcbutton("-", Colors.amber, Colors.white),
                  calcbutton("=", Colors.amber, Colors.white),
                ]
            )


          ],
        ),
      ),


    );
  }


}
