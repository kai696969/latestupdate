import 'package:flutter/material.dart';
import 'package:extended_math/extended_math.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class zInPage extends StatelessWidget
{
  Complex j = const Complex(re:0 , im: 1);                       // j
  double Rzl = 0;                                                       // Real ZL
  double Izl = 0;                                                        // Imaginary ZL
  double Rzo = 0;                                                     //Real Zo
  double Izo = 0;                                                       //Imaginary Zo
  num beta = 0;                                                    // Beta
  num zpos = 0;                                                   // Z position
  double t1 = 0;
  double t2 = 0;
  double rcvaluearg = 0;
  double rcvaluemod = 0;
  num tanbl = 0;
  Complex a = Complex(re:0 , im:0);                       // RC in rectangular form Radian Mode
  num b = 0;                                                              // RC mod in polar form
  num c = 0;                                                              // RC angle in polar form
  Complex d = Complex(re:0 , im:0);                       // Zin in rectangular form Radian Mode
  Complex rcvalue = Complex(re:0 , im:0);              // RC in rectangular form Radian Mode
  Complex zlvalue = Complex(re:0 , im:0);              // ZL = Real ZL + Imaginary ZL
  Complex zovalue = Complex(re:0 , im:0);             // Zo = Real Zo + Imaginary Zo
  Complex zin = Complex(re:0 , im:0);
  zInPage({required this.Rzl , required this.Izl , required this.Rzo , required this.Izo , required this.d , required this.zovalue , required this.zlvalue, required this.beta , required this.zpos , required this.zin, required this.j, required this.tanbl
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Step By Step Guide' ,style:TextStyle(color: Colors.black ),),
        centerTitle: true,
        backgroundColor: Colors.yellow[800],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0 , top: 30.0),
          child: SingleChildScrollView(
            child:  Column(
              children: [
                Text("Result: $d "  , style:const TextStyle(color: Colors.black , fontSize: 25, ) ),
                ExpansionTile(
                  title: const Text("Method 1 " , style:TextStyle(color: Colors.black , fontSize: 28,),),
                  children: [
                    const ListTile(title: Text.rich(TextSpan(text: 'Step 1:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
                    ListTile( title: Math.tex("${r'\Z_L= '}{$Rzl}{${"+"}}{${Izl}}{${"i"}} " , textStyle: const TextStyle(fontSize: 25)),),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}




