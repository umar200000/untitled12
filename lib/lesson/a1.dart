import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  {
  int count = 0;
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("$count",style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 30
        ),),
      ),
     floatingActionButton: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         SizedBox(
           height: 100,
           width: 100,
           child: FloatingActionButton(
               child: Icon(Icons.remove,size: 50,),
               onPressed: (){
                 setState(() {
                   print(--count);
                 });
               }),
         ),
         SizedBox(
           height: 600,
           width: 100,
           child: FloatingActionButton(
               child: Icon(Icons.add,size: 50,),
               onPressed: (){
                 setState(() {
                   print(++count);
                 });
               }),
         )
       ],
     ),
    );
  }
}