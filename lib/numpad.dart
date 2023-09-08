import 'package:flutter/material.dart';

class Numpad extends StatefulWidget {
  const Numpad({super.key});

  @override
  State<Numpad> createState() => _NumpadState();
}

class _NumpadState extends State<Numpad> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Container(
                child: Text(" $count ",style: TextStyle(fontSize: 50),),
                
              ),
            )),
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                     Expanded (
                      flex: 1,
                        child: SizedBox(
                          width: double.infinity,
                          height: 100, 
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              count = 1;
                            });
                          }, 
                          
                          child: 
                          Text('1')),
                        ),
                      ),
                      Expanded (
                      flex: 1,
                        child: SizedBox(
                          width: double.infinity,
                          height: 100, 
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              count = 2;
                            });
                          }, 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          child: 
                          Text('2')),
                        ),
                      ),
                      
                    ],
                  ),
                  Row(
                    children: [
                     Expanded (
                      flex: 1,
                        child: SizedBox(
                          width: double.infinity,
                          height: 100, 
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              count = 3;
                            });
                          }, 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow,
                          ),
                          child: 
                          Text('3')),
                        ),
                      ),
                      Expanded (
                      flex: 1,
                        child: SizedBox(
                          width: double.infinity,
                          height: 100, 
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              count = 4;
                            });
                          }, 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightGreen,
                          ),
                          child: 
                          Text('4')),
                        ),
                      ),
                      
                    ],
                  )
                ],
              ),
            ))
        ],
      ),
    );;
  }
}