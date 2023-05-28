import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Stateless and Stateful"),
        ),
        body: Center(
          child: Column(
            children: const [
              SizedBox(
                height: 20,
              ),
              Text(
                "welcome to the app",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Buttons(),
            ],
          ),
        ),
      ),
    );
  }
}

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  var maleCounter = 0;
  var femaleCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Number of Males : $maleCounter",
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Number of females: $femaleCounter",
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20,),
          MaterialButton(
            onPressed: (){
              setState(() {
                maleCounter++;
              });
            },
            height: 50,
            minWidth: 200,
            color: Colors.blue,
            elevation: 10,
            child: const Text(
              "Male +",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

           MaterialButton(
            onPressed: (){
              setState(() {
                femaleCounter++;  
              });
            },
            height: 50,
            minWidth: 200,
            color: Colors.blue,
            elevation: 10,
            child: const Text(
              "Female +",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
