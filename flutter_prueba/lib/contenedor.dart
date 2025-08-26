import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 80,
          color: Colors.purple,
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("AppData",style: TextStyle(fontSize: 20,color: Colors.white),),
        
        ],
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(width: 70, height: 70,color: Colors.amber),
            Container(width: 70, height: 70,color: Colors.greenAccent),
            Container(width: 70, height: 70,color: Colors.teal),
          ],
         
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
            Container(width: 150, height: 90, color: Colors.lightGreenAccent),
            Container(width: 250, height: 90, color: Colors.blue),
          ],
        ),
        const SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(width: 79, height: 190, color: Colors.pink),
            Container(width: 70, height: 70,color: Colors.greenAccent),
            Container(width: 79, height: 190, color: Colors.deepPurpleAccent),
          ],
        ),
      ],
    );

  }
}