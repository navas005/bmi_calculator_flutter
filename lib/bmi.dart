import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  TextEditingController heightcontroller=TextEditingController();
  TextEditingController weightcontroller=TextEditingController();
  String result="";
  void calculate_bmi(){
    double height=double.parse(heightcontroller.text)/100;
    double weight=double.parse(weightcontroller.text);
    double bmi=weight/(height*height);
    setState(() {result="your bmi is ${bmi.toStringAsFixed(2)}";
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blueAccent, Colors.greenAccent],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "BMI CALCULATOR",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 50, width: 150),
              SizedBox(
                height: 400,
                width: 500,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextField(controller: weightcontroller,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.monitor_weight),
                            hintText: "Enter weight in KG",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                    
                            fillColor: Colors.blueGrey,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(color: Colors.red),
                            ),
                          ),
                        ),
                        TextField(controller: heightcontroller,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.height),
                            hintText: "Enter height in CM",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                    
                            fillColor: Colors.blueGrey,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.red),
                            ),
                          ),
                        ),
                    
                      GestureDetector(onTap: calculate_bmi,
                          child: Container(
                            height: 30,
                            width:double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.blueAccent, Colors.greenAccent],
                                begin: AlignmentGeometry.topCenter,
                                end: AlignmentGeometry.bottomCenter,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "CALCULATE",
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),Text(result)
                      ],
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
