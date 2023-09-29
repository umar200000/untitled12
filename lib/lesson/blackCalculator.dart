import 'package:flutter/material.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  String num1 = "";
  String num2 = "";
  String s = "";
  String s2 = "";
  String sum = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                  Text("$sum",
                  style: TextStyle(
                  fontWeight: FontWeight.w100,
                   fontSize: 70
                   ),),

                    Text("$num1 $s $num2",
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 70
                        ),),

                    ],
            ),
                )),
            Expanded(child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                  setState(() {
                    s = "";
                    s2 = "";
                    num1 = "";
                    num2 = "";
                    sum = "";
                  });
                    },
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        radius: 45,
                        child: Text("C",
                          style: TextStyle(fontSize: 50,fontWeight: FontWeight.w200,color: Colors.black),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                  setState(() {
                  print(num2);
                  print(num1);
                  print(s);
                    num2!="" ? num2=num2.substring(0,num2.length-1) : s!="" ? s="" : num1!="" ? num1=num1.substring(0,num1.length-1) : "";

                  });
                    },
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        radius: 45,
                        child: Icon(Icons.backspace_outlined,size: 40,color: Colors.black)
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                  setState(() {
                    s=="" ? s="%" : "";
                  });
                    },
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        radius: 45,
                        child: Text("%",
                          style: TextStyle(fontSize: 50,fontWeight: FontWeight.w200,color: Colors.black),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                   setState(() {
                     s=="" ? s="/" : "";
                   });
                    },
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 45,
                        child: Text("/",
                          style: TextStyle(fontSize: 50,fontWeight: FontWeight.w200,color: Colors.white),),
                      ),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                  setState(() {
                    if(cheak(s2)){
                      s2="";
                    }else if(s=="") num1 = findNumber(num1, 7);
                    else num2 = findNumber(num2, 7);
                    }
                  );
                    },
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.black54,
                        radius: 45,
                        child: Text("7",
                          style: TextStyle(fontSize: 50,fontWeight: FontWeight.w200,color: Colors.white),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        if(cheak(s2)){
                          s2="";
                        }else if(s=="") num1 = findNumber(num1, 8);
                        else num2 = findNumber(num2, 8);
                      });
                    },
                    child: Container(
                      child: CircleAvatar(
                          backgroundColor: Colors.black54,
                          radius: 45,
                          child: Text("8",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w200),)
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        if(cheak(s2)){
                          s2="";
                        }else if(s=="") num1 = findNumber(num1, 9);
                        else num2 = findNumber(num2, 9);
                      });
                    },
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.black54,
                        radius: 45,
                        child: Text("9",
                          style: TextStyle(fontSize: 50,fontWeight: FontWeight.w200,color: Colors.white),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                   setState(() {
                     s=="" ? s="x":"";
                   });
                    },
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 45,
                        child: Text("x",
                          style: TextStyle(fontSize: 50,fontWeight: FontWeight.w200,color: Colors.white),),
                      ),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        if(cheak(s2)){
                          s2="";
                        }else if(s=="") num1 = findNumber(num1, 4);
                        else num2 = findNumber(num2, 4);
                      });
                    },
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.black54,
                        radius: 45,
                        child: Text("4",
                          style: TextStyle(fontSize: 50,fontWeight: FontWeight.w200,color: Colors.white),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        if(cheak(s2)){
                          s2="";
                        }else if(s=="") num1 = findNumber(num1, 5);
                        else num2 = findNumber(num2, 5);
                      });
                    },
                    child: Container(
                      child: CircleAvatar(
                          backgroundColor: Colors.black54,
                          radius: 45,
                          child: Text("5",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w200),)
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        if(cheak(s2)){
                          s2="";
                        }else if(s=="") num1 = findNumber(num1, 6);
                        else num2 = findNumber(num2, 6);
                      });
                    },
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.black54,
                        radius: 45,
                        child: Text("6",
                          style: TextStyle(fontSize: 50,fontWeight: FontWeight.w200,color: Colors.white),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                   setState(() {
                    s=="" ? s = "-" : "";
                   });
                    },
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 45,
                        child: Text("-",
                          style: TextStyle(fontSize: 80,fontWeight: FontWeight.w200,color: Colors.white),),
                      ),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(child: Row (
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        if(cheak(s2)){
                          s2="";
                        }else if(s=="") num1 = findNumber(num1, 1);
                        else num2 = findNumber(num2, 1);
                      });
                    },
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.black54,
                        radius: 45,
                        child: Text("1",
                          style: TextStyle(fontSize: 50,fontWeight: FontWeight.w200,color: Colors.white),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        if(cheak(s2)){
                          s2="";
                        }else if(s=="") num1 = findNumber(num1, 2);
                        else num2 = findNumber(num2, 2);
                      });
                    },
                    child: Container(
                      child: CircleAvatar(
                          backgroundColor: Colors.black54,
                          radius: 45,
                          child: Text("2",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w200),)
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        if(cheak(s2)){
                          s2="";
                        }else if(s=="") num1 = findNumber(num1, 3);
                        else num2 = findNumber(num2, 3);
                      });
                    },
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.black54,
                        radius: 45,
                        child: Text("3",
                          style: TextStyle(fontSize: 50,fontWeight: FontWeight.w200,color: Colors.white),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                   setState(() {
                    s=="" ? s = "+" : "";
                   });
                    },
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 45,
                        child: Text("+",
                          style: TextStyle(fontSize: 50,fontWeight: FontWeight.w200,color: Colors.white),),
                      ),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        if(cheak(s2)){
                          s2="";
                        }else if(s=="") num1 = findNumber(num1, 0);
                        else num2 = findNumber(num2, 0);
                      });
                    },
                    child:  Container(
                      height: 100,
                     padding: EdgeInsets.all(10),
                     margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(40)
                      ),
                      child: Text(" 0",
                        style: TextStyle(fontSize: 50,fontWeight: FontWeight.w200,color: Colors.white),),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                    setState(() {
                      if(cheak(s2)){
                        s2="";
                      }else if(s=="") {
                        num1!=""? num1 = num1+"." : "";
                      }
                      else num2 !=""? num2=num2+".":"";
                    });
                    },
                    child: Container(
                      child: CircleAvatar(
                          backgroundColor: Colors.black54,
                          radius: 45,
                          child: Text(".",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w200),)
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                   setState(() {
                     sum = switchlar(s);
                     s2 = "=";
                   });
                    },
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 45,
                        child: Text("=",
                          style: TextStyle(fontSize: 60,fontWeight: FontWeight.w200,color: Colors.white),),
                      ),
                    ),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    ));
  }



   findNumber(String number, int n) {
    if(number.contains(".")){
      number = number + "$n";
    }else {
      number == "" ? number = "$n" : number = "${double.parse(number) * 10 + n}";
    }
    String x = number;
    int first = x.indexOf('.');
    String y = x.substring(first+1,x.length);


    return int.parse(y)>0 ? x : x.substring(0,first);

     return number;
   }

   switchlar(String a){
     dynamic summa =0;
     switch(a){
       case 'x': summa = double.parse(num1) * double.parse(num2); break;
       case '/': summa = double.parse(num1) / double.parse(num2); break;
       case '+': summa = double.parse(num1) + double.parse(num2); break;
       case '-': summa = double.parse(num1) - double.parse(num2); break;
       case '%': summa = double.parse(num1) * double.parse(num2) /100; break;
     }

     String x = summa.toString();
     int first = x.indexOf('.');
     String y = x.substring(first+1,x.length);


     return int.parse(y)>0 ? x : x.substring(0,first);
   }

   cheak(String a){
    if(a=="="){
      num1 = "";
      num2 = "";
      s = "";
      return true;
    }
    return false;
   }

}
