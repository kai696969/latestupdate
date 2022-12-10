import 'package:flutter/material.dart';
import 'package:latestupdate/rcPage.dart';
import 'package:flutter/rendering.dart';
import 'package:extended_math/extended_math.dart';
import 'package:flutter_math_fork/tex.dart';

class calculation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _calculationState();
  }
}

class _calculationState extends State<calculation> {
  double Rzl = 0;
  double Izl = 0;
  double Rzo = 0;
  double Izo = 0;
  double t1 = 0;
  double t2 = 0;
  num y = 0;
  num z = 0;
  double rcvaluearg = 0;
  double rcvaluemod = 0;
  Complex zlvalue = Complex(re:0 , im:0);
  Complex zovalue = Complex(re:0 , im:0);
  Complex rcvalue = Complex(re:0 , im:0);
  Complex x = Complex(re:0 , im:0);
  TextEditingController controller1 = TextEditingController(text: '');
  TextEditingController controller2 = TextEditingController(text: '');
  TextEditingController controller3 = TextEditingController(text: '');
  TextEditingController controller4 = TextEditingController(text: '');
  TextEditingController controller5 = TextEditingController(text: '');
  TextEditingController controller6 = TextEditingController(text: '');


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
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context)=>rcPage(z:z, Rzl:Rzl ,  Izl:Izl , Rzo:Rzo , Izo:Izo , x:x , zlvalue:zlvalue , zovalue: zovalue , y:y , t1:t1 , t2:t2 , rcvaluearg:rcvaluearg , rcvaluemod:rcvaluemod),),);
                },
                child: Text('Reflection Coefficient'),
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
        final rcvalue = ((zlvalue)-(zovalue))/((zlvalue)+(zovalue));
        final rcvaluemod = rcvalue.module;
        final rcvaluearg = rcvalue.argument;
        x = rcvalue;
        y=rcvaluemod;
        z=rcvaluearg;

      });
    }
    else if (controller5.text != '' && controller5.text != '' )
    {
      setState(() {
        t1 = double.parse(controller5.text);
        t2 = double.parse(controller6.text);
        final rc1 = Complex(re:t1 , im:t2) ;
        final rc2 = Complex(re:t1 , im:t2) ;
        final rcvalue = rc1 + rc2;
        x = rcvalue;
      });
    }
    else
    {
      t1 = double.parse(controller5.text);
      t2 = double.parse(controller6.text);
      final rc1 = Complex(re:t1 , im:t2) ;
      final rc2 = Complex(re:t1 , im:t2) ;
      final rcvalue = rc1 - rc2;
      x = rcvalue;
    }


  }
}
