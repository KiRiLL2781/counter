
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
  
}

class _CounterState extends State<Counter> {
  int counter = 0;
  plus(){
    counter++;
    setState(() {
      
    });
  }
  minus(){counter--; setState((){});}
  update(){counter=0; setState((){
  });}
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text('$counter', style: TextStyle(fontSize: 100)),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 50,
              child: ElevatedButton( 
                child: const Text('-'),
                onPressed: minus,
              ),
            ),
            const SizedBox(width: 20),
           Container(
              width: 100,
              height: 50,
              child: ElevatedButton( 
                child: const Text('update'),
                onPressed: update,
              ),
            ),
            const SizedBox(width: 20),
            Container(
              width: 100,
              height: 50,
              child: ElevatedButton( 
                child: const Text('+'),
                onPressed: plus,
              ),
            ),
          ],
        )
      ],
    );
  }
}