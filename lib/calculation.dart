import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:latestupdate/rcPage.dart';
import 'package:flutter/rendering.dart';
import 'package:extended_math/extended_math.dart';
import 'package:flutter_math_fork/tex.dart';
import 'package:latestupdate/zInPage.dart';

class calculation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _calculationState();
  }
}

class _calculationState extends State<calculation>
{
  Complex j = const Complex(re:0 , im: 1);               // j
  double Rzl = 0;                                                       // Real ZL
  double Izl = 0;                                                        // Imaginary ZL
  double Rzo = 0;                                                     //Real Zo
  double Izo = 0;                                                       //Imaginary Zo
  num beta = 0;                                                        // Beta
  num zpos = 0;                                                       // Z position
  double t1 = 0;
  double t2 = 0;
  Complex rctop = Complex(re:0 , im:0);              // RC in rectangular form Radian Mode
  Complex rcbtm = Complex(re:0 , im:0);
  double rcvaluearg = 0;
  double rcvaluemod = 0;
  num tanbl = 0;
  Complex a = Complex(re:0 , im:0);                       // RC in rectangular form Radian Mode
  Complex e = Complex(re:0 , im:0);                       // RC in rectangular form Radian Mode
  Complex f = Complex(re:0 , im:0);                       // RC in rectangular form Radian Mode
  num b = 0;                                                              // RC mod in polar form
  num c = 0;                                                              // RC angle in polar form
  Complex d = Complex(re:0 , im:0);                       // Zin in rectangular form Radian Mode
  Complex rcvalue = Complex(re:0 , im:0);              // RC in rectangular form Radian Mode
  Complex zlvalue = Complex(re:0 , im:0);              // ZL = Real ZL + Imaginary ZL
  Complex zovalue = Complex(re:0 , im:0);             // Zo = Real Zo + Imaginary Zo
  Complex zin = Complex(re:0 , im:0);                     // Zin in rectangular form Radian Mode
  TextEditingController controller1 = TextEditingController(text: '');  // RZL
  TextEditingController controller2 = TextEditingController(text: '');  // IZL
  TextEditingController controller3 = TextEditingController(text: '');  // RZO
  TextEditingController controller4 = TextEditingController(text: ''); // IZO
  TextEditingController controller5 = TextEditingController(text: ''); // Filler
  TextEditingController controller6 = TextEditingController(text: ''); // Filler
  TextEditingController controller7 = TextEditingController(text: ''); // Beta
  TextEditingController controller8 = TextEditingController(text: ''); // Z position
  // TextEditingController controller9 = TextEditingController(text: '');
  // TextEditingController controller10 = TextEditingController(text: '');


  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: Padding(
                        padding:  const EdgeInsets.only(right: 10.0, top: 30.0),
                        child: TextField(
                          controller: controller1,
                          decoration: InputDecoration(
                              labelText: "Real ZL (ohms)",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                  ),
                  Expanded(child:
                  SizedBox(
                    height: 100,
                    child: Padding(
                      padding:  const EdgeInsets.only(left: 10.0, top: 30.0),
                      child: TextField(
                        controller: controller2,
                        decoration: InputDecoration(
                            labelText: "Imaginary ZL (johms)",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  )

                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: Padding(
                        padding:  const EdgeInsets.only(right: 10.0, top: 30.0),
                        child: TextField(
                          controller: controller3,
                          decoration: InputDecoration(
                              labelText: "Real Zo (ohms)",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                  ),
                  Expanded(child:
                  SizedBox(
                    height: 100,
                    child: Padding(
                      padding:  const EdgeInsets.only(left: 10.0, top: 30.0),
                      child: TextField(
                        controller: controller4,
                        decoration: InputDecoration(
                            labelText: "Imaginary Zo (johms)",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  )

                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: Padding(
                        padding:  const EdgeInsets.only(right: 10.0, top: 30.0),
                        child: TextField(
                          controller: controller5,
                          decoration: InputDecoration(
                              labelText: "test1",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                  ),
                  Expanded(child:
                  SizedBox(
                    height: 100,
                    child: Padding(
                      padding:  const EdgeInsets.only(left: 10.0, top: 30.0),
                      child: TextField(
                        controller: controller6,
                        decoration: InputDecoration(
                            labelText: "test2",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  )

                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: Padding(
                        padding:  const EdgeInsets.only(right: 10.0, top: 30.0),
                        child: TextField(
                          controller: controller7,
                          decoration: InputDecoration(
                              labelText: "Beta",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                  ),
                  Expanded(child:
                  SizedBox(
                    height: 100,
                    child: Padding(
                      padding:  const EdgeInsets.only(left: 10.0, top: 30.0),
                      child: TextField(
                        controller: controller8,
                        decoration: InputDecoration(
                            labelText: "Z position",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  )

                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              ElevatedButton(
                onPressed: () {
                  _validateUserInput(controller1.text);
                  _validateUserInput(controller2.text);
                  _validateUserInput(controller3.text);
                  _validateUserInput(controller4.text);
                  _validateUserInput(controller5.text);
                  _validateUserInput(controller6.text);
                  _validateUserInput(controller7.text);
                  _validateUserInput(controller8.text);
                  // _validateUserInput(controller9.text);
                  // _validateUserInput(controller10.text);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context)=>rcPage( Rzl:Rzl ,  Izl:Izl , Rzo:Rzo , Izo:Izo  , zlvalue:zlvalue , zovalue: zovalue ,  t1:t1 , t2:t2 ,
                          rcvaluemod:rcvaluemod, rcvaluearg:rcvaluearg ,  a:a, b:b ,c:c , rctop:rctop , rcbtm:rcbtm , e:e , f:f , zpos:zpos ,
                          beta:beta , ),),);
                },
                child: Text('Reflection Coefficient'),
              ),
              ElevatedButton(
                onPressed: () {
                  _validateUserInput1(controller1.text);
                  _validateUserInput1(controller2.text);
                  _validateUserInput1(controller3.text);
                  _validateUserInput1(controller4.text);
                  _validateUserInput1(controller5.text);
                  _validateUserInput1(controller6.text);
                  _validateUserInput1(controller7.text);
                  _validateUserInput1(controller8.text);
                  // _validateUserInput(controller9.text);
                  // _validateUserInput(controller10.text);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context)=>zInPage( Rzl:Rzl ,  Izl:Izl , Rzo:Rzo , Izo:Izo  , zlvalue:zlvalue , zovalue: zovalue , beta:beta , zpos:zpos ,
                          zin:zin , d:d, j:j ,  tanbl:tanbl ),),);
                },
                child: Text('Input Impedance @ Z'),
              ),
            ],
          ),
        ),
      ),
    );

  }

  _validateUserInput(String input) {
    if (controller1.text != '' && controller2.text != '' && controller3.text != ''  && controller4.text != '' ) {
      setState(() {
        Rzl = double.parse(controller1.text);
        Izl = double.parse(controller2.text);
        Rzo = double.parse(controller3.text);
        Izo = double.parse(controller4.text);
        final zlvalue = Complex(re:Rzl , im:Izl) ;
        final zovalue = Complex(re:Rzo , im:Izo) ;
        final rctop = ((zlvalue)-(zovalue));
        final rcbtm = ((zlvalue)+(zovalue));
        final rcvalue = rctop/rcbtm;
        final rcvaluemod = rcvalue.module;
        final rcvaluearg = rcvalue.argument;
        a = rcvalue;
        b = rcvaluemod;
        c = rcvaluearg;
        e = rctop;
        f = rcbtm;

      });
    }
    else if (controller5.text != '' && controller6.text != '' )
    {
      setState(() {
        t1 = double.parse(controller5.text);
        t2 = double.parse(controller6.text);
        final rc1 = Complex(re:t1 , im:t2) ;
        final rc2 = Complex(re:t1 , im:t2) ;
        final rcvalue = rc1 + rc2;
        a = rcvalue;
      });
    }

    }


  _validateUserInput1(String input)
  {
    if (controller1.text != '' && controller2.text != '' && controller3.text != ''  && controller4.text != '' && controller7.text != '' && controller8.text != '' )
    {
      setState(() {
        Rzl = double.parse(controller1.text);
        Izl = double.parse(controller2.text);
        Rzo = double.parse(controller3.text);
        Izo = double.parse(controller4.text);
        beta = num.parse(controller7.text);
        zpos = num.parse(controller8.text);
        final tanbl = tan(beta*zpos);
        final j = Complex(re:0 , im:1);
        final zlvalue = Complex(re:Rzl , im:Izl) ;
        final zovalue = Complex(re:Rzo , im:Izo) ;
        // final zintop =((zlvalue + (zovalue* j * tanbl))(zovalue + (zlvalue*j* tanbl)))* (zovalue);
        // final zinbtm =  (zovalue + (zlvalue*j* tanbl));
        final zin= ((zlvalue + (zovalue* j * tanbl))/(zovalue + (zlvalue*j* tanbl)))* (zovalue);
        d = zin;
      });
    }

    else if (controller5.text != '' && controller6.text != '' )
    {
      setState(() {
        t1 = double.parse(controller5.text);
        t2 = double.parse(controller6.text);
        final rc1 = Complex(re:t1 , im:t2) ;
        final rc2 = Complex(re:t1 , im:t2) ;
        final rcvalue = rc1 + rc2;
        a = rcvalue;
      });
    }
  }


  }

