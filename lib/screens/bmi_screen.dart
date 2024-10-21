import 'package:flutter/material.dart';

  class BMIScreen extends StatefulWidget {
    const BMIScreen({super.key});
  
    @override
    State<BMIScreen> createState() => _BMIScreenState();
  }
  
  class _BMIScreenState extends State<BMIScreen> {

    var wtController  = TextEditingController();
    var ftController  = TextEditingController();
    var inController  = TextEditingController();
    var result = "";
    var bg = Colors.indigo.shade200;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Your BMI"),
          backgroundColor: Colors.indigo,
        ),
        backgroundColor: bg,
        body:Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'BMI',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                ),),
                SizedBox(height: 21,),
                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    label: Text('Enter your Weight (in Kgs)'),
                    prefixIcon: Icon(Icons.line_weight),
                  ),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                    label: Text('Enter your Height (in Feet)'),
                    prefixIcon: Icon(Icons.height)
                  ),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: inController,
                  decoration: InputDecoration(
                    label: Text('Enter your Height (in inch)'),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16,),
                ElevatedButton(
                    onPressed: (){
                      var wt = wtController.text.toString();
                      var ft = ftController.text.toString();
                      var inch = inController.text.toString();

                      if(wt!="" && ft!="" && inch!=""){
                        // BMI calculate
                        var iWt = int.parse(wt);
                        var iFt = int.parse(ft);
                        var iInch = int.parse(inch);

                        var tInch = (iFt*12) + iInch;
                        var tCm = tInch*2.54;
                        var tM = tCm/100;
                        var bmi = iWt/(tM*tM);

                        var msg = "";

                        if(bmi>25){
                          msg = "You're OverWeight!!";
                          bg = Colors.orange.shade200;
                        } else if(bmi<18){
                          msg = "You're UnderWeight!!";
                          bg = Colors.red.shade200;
                        } else{
                          msg = "You're Healthy!!";
                          bg = Colors.green.shade200;
                        }

                       setState(() {
                       });
                        result = "$msg \n Your BMI is: ${bmi.toStringAsFixed(2)}";
                      }
                      else{
                        setState(() {
                          result = "Please fill all the required blanks!!";
                        });
                      }
                    },
                    child: Text('Calculate',)),
                SizedBox(height: 11,),
                Text(result, style: TextStyle(fontSize: 19,color: Colors.red),),

              ],
            ),
          ),
        ),
      );
    }
  }
  