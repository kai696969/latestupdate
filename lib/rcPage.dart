import 'package:flutter/material.dart';
import 'package:extended_math/extended_math.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:latestupdate/rczPage.dart';

class rcPage extends StatelessWidget {
  Complex j = const Complex(re:0 , im: 1);               // j
  double Rzl = 0;                                                       // Real ZL
  double Izl = 0;                                                        // Imaginary ZL
  double Rzo = 0;                                                     //Real Zo
  double Izo = 0;                                                       //Imaginary Zo
  num beta = 0;                                                        // Beta
  num zpos = 0;                                                       // Z position
  double t1 = 0;
  double t2 = 0;
  double expp =  2.718281828459045;                      // e
  Complex rctop = Complex(re:0 , im:0);                   // rc numerator
  Complex rcbtm = Complex(re:0 , im:0);                 // rc denominator
  double rcvaluearg = 0;                                           // rc angle in polar form
  double rcvaluemod = 0;                                         // rc real part in polar form
  num tanbl = 0;                                                       // tan beta L
  Complex a = Complex(re:0 , im:0);                         // RC in rectangular form Radian Mode
  Complex e = Complex(re:0 , im:0);                         // RC in rectangular form Radian Mode
  Complex f = Complex(re:0 , im:0);                         // RC in rectangular form Radian Mode
  num b = 0;                                                              // RC mod in polar form
  num c = 0;                                                             // RC angle in polar form
  Complex d = Complex(re:0 , im:0);                         // Zin in rectangular form Radian Mode
  Complex rcvalue = Complex(re:0 , im:0);               // RC in rectangular form Radian Mode
  Complex zlvalue = Complex(re:0 , im:0);                 // ZL = Real ZL + Imaginary ZL
  Complex zovalue = Complex(re:0 , im:0);               // Zo = Real Zo + Imaginary Zo
  Complex zin = Complex(re:0 , im:0);
  rcPage({required this.rcvaluemod , required this.rcvaluearg ,required this.Rzl , required this.Izl , required this.Rzo , required this.Izo ,
    required this.a , required this.b  , required this.c , required this.zovalue , required this.zlvalue , required this.t1 , required this.t2,
    required this.rcbtm , required this.rctop , required this.e , required this.f , required this.zpos , required this.beta ,
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
                Text("Result: \n  $a  "  , style:const TextStyle(color: Colors.black , fontSize: 25, ) ),
                ExpansionTile(
                  title: const Text("Method 1 " , style:TextStyle(color: Colors.black , fontSize: 28,),),
                  children: [
                    const ListTile(title: Text.rich(TextSpan(text: 'Step 1:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
                    ListTile( title: Math.tex("${r'\Z_L= '}{$Rzl}{${"+"}}{${Izl}}{${"i"}} " , textStyle: const TextStyle(fontSize: 25)),),

                    const ListTile(title: Text.rich(TextSpan(text: 'Step 2:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
                    ListTile( title: Math.tex("${r'\Z_o= '}{$Rzo}{${"+"}}{${Izo}}{${"i"}} " , textStyle: const TextStyle(fontSize: 25)),),

                    const ListTile(title: Text.rich(TextSpan(text: 'Step 3:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)) ,
                    ListTile( title: Math.tex("${r'\Gamma_L = \frac{Z_L- Z_o}{Z_L+ Z_o}'}{${" \n \n =" }}{$a}", textStyle: TextStyle(fontSize: 25) ,)),

                   ExpansionTile(title: Text("Details ",style: TextStyle(fontSize: 20 ,)),
                        children: [ListTile(title: Text("Denominator:  \n \n $e (Rect form) \n  ",style: TextStyle(fontSize: 23 ,)),),
                          const ExpansionTile(title: Text("More",style: TextStyle(fontSize: 20 ,)),
                            children:[ ListTile(title: Text("Hi",style: TextStyle(fontSize: 25 ,)),)]
                            ,)
                        ]
                    ),

                  ],
                ),
                ExpansionTile(
                  title: const Text("Method 2 " , style:TextStyle(color: Colors.black , fontSize: 28,),),
                  children: [
                    const ListTile(title: Text.rich(TextSpan(text: 'Step 1:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
                    ListTile( title: Math.tex("${r'\Z_L= '}{$t1}{${"+"}}{${t2}}{${"i"}} " , textStyle: const TextStyle(fontSize: 25)),),

                    const ListTile(title: Text.rich(TextSpan(text: 'Step 2:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
                    ListTile( title: Math.tex("${r'\Z_L= '}{$t1}{${"+"}}{$t2}{${"i"}} " ,textStyle:const TextStyle(fontSize: 25)),),

                    const ListTile(title: Text.rich(TextSpan(text: 'Step 3:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)) ,
                    ListTile( title: Math.tex("${r'\Gamma_L = \frac{Z_L- Z_o}{Z_L+ Z_o}'}{${" \n \n =" }}", textStyle: const TextStyle(fontSize: 25) ,),),

                    const ExpansionTile(title: Text("More",style: TextStyle(fontSize: 20 ,)),
                        children: [ListTile(title: Text("Hi",style: TextStyle(fontSize: 25 ,)),),
                          const ExpansionTile(title: Text("More",style: TextStyle(fontSize: 20 ,)),
                            children:[ ListTile(title: Text("Hi",style: TextStyle(fontSize: 25 ,)),)]
                            ,)
                        ]
                    ),

                    const ListTile(title: Text.rich(TextSpan(text: 'Step 4:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)) ,



                  ],
                ),

                SizedBox(
                  height: 25.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context)=>rczPage( Rzl:Rzl ,  Izl:Izl , Rzo:Rzo , Izo:Izo  , zlvalue:zlvalue , zovalue: zovalue ,  t1:t1 , t2:t2 ,
                          rcvaluemod:rcvaluemod, rcvaluearg:rcvaluearg ,  a:a, b:b ,c:c , rctop:rctop , rcbtm:rcbtm , e:e , f:f ,
                          beta:beta , zpos:zpos ,  ),),);
                  },
                  child: Text('Reflection Coefficient @ $zpos '),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}






