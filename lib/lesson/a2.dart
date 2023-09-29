import 'package:flutter/material.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$count",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: Container(
                  height: 50,
                  width: 100,

                  child: Center(child: Text("Tap here"))),
              onTap: (){
                setState(() {
                  count++;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purple
              ),
                onPressed: (){
                  setState(() {
                    count--;
                  });
                },
                child: Text("Button"))
            // GestureDetector(
            //   onTap: (){
            //     setState(() {
            //       count++;
            //     });
            //   },
            //   child: Container(
            //       height: 50,
            //       width: 100,
            //       color: Colors.cyanAccent,
            //       child: Center(child: Text("Clik here"))),
            // ),

            // GestureDetector(
            //   child: Icon(Icons.remove,size: 100,),
            //   onTap: (){
            //     setState(() {
            //       count--;
            //     });
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
