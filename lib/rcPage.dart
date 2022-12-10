import 'package:flutter/material.dart';
import 'package:extended_math/extended_math.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class rcPage extends StatelessWidget {


  double Rzl = 0;
  double Izl = 0;
  double Rzo = 0;
  double Izo = 0;
  double t1=0;
  double t2 = 0;
  double rcvaluearg = 0;
  double rcvaluemod = 0;
  Complex zlvalue = Complex(re:0 , im:0);
  Complex zovalue = Complex(re:0 , im:0);
  Complex rcvalue = Complex(re:0 , im:0);
  Complex x = Complex(re:0 , im:0);
  num y = 0;
  num z = 0;
  rcPage({required this.rcvaluemod , required this.rcvaluearg ,required this.Rzl , required this.Izl , required this.Rzo , required this.Izo , required this.x , required this.y ,required this.z , required this.zovalue , required this.zlvalue , required this.t1 , required this.t2
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
                Text("Result: $x \n =  \n $y $z  "  , style:const TextStyle(color: Colors.black , fontSize: 25, ) ),
                ExpansionTile(
                  title: const Text("Method 1 " , style:TextStyle(color: Colors.black , fontSize: 28,),),
                  children: [
                    const ListTile(title: Text.rich(TextSpan(text: 'Step 1:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
                    ListTile( title: Math.tex("${r'\Z_L= '}{$Rzl}{${"+"}}{${Izl}}{${"i"}} " , textStyle: const TextStyle(fontSize: 25)),),

                    const ListTile(title: Text.rich(TextSpan(text: 'Step 2:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
                    ListTile( title: Math.tex("${r'\Z_L= '}{$Rzo}{${"+"}}{${Izo}}{${"i"}} " , textStyle: const TextStyle(fontSize: 25)),),

                    const ListTile(title: Text.rich(TextSpan(text: 'Step 3:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)) ,
                    ListTile( title: Math.tex("${r'\Gamma_L = \frac{Z_L- Z_o}{Z_L+ Z_o}'}{${" \n \n =" }}{$x}", textStyle: TextStyle(fontSize: 25) ,)),

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
              ],
            ),
          ),
        ),
      ),
    );
  }
}




