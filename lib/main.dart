import 'dart:ui';

import 'package:flutter/material.dart';
import 'Dashboard/View/dashboard_view.dart';
import 'images.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),

      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(

        child:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(25),
            ),
            elevation: 25,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height/1.3,
                    width: MediaQuery.of(context).size.width/2.5,
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Pscd."),
                              InkWell(onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Dashboard()),
                                );                                },child: Icon(Icons.menu_sharp))
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height/20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Create Your \nBest Postcard",style: TextStyle(
                                fontSize: 25
                              ),)
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height/30,
                          ),
                          Text("Front"),
                          SizedBox(
                            height: MediaQuery.of(context).size.height/30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text("Character"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Peg-top",style: TextStyle(color: Colors.red),),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Icon(Icons.arrow_drop_down,color: Colors.red,),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height/30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text("Backgrouind"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Mountains",style: TextStyle(color: Colors.red),),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Icon(Icons.arrow_drop_down,color: Colors.red,),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height/30,
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.red
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(0))
                            ),

                            child: Row(
                              children: [
                                Icon(Icons.arrow_right,color: Colors.red,),
                                GestureDetector(
                                    onTap: (){
                                    setState(() {
                                      clicked = true;
                                    });
                                    },child: Text("Preview",style: TextStyle(color: Colors.red),))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height/30,
                          ),
                          Text("Back"),
                          SizedBox(
                            height: MediaQuery.of(context).size.height/40,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(0))
                                ),
                                child: Center(child: Text("Aa",style: TextStyle(color: Colors.red),)),
                              ),
                              Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(0))
                                ),                                 child: Center(child:Icon(Icons.square_outlined,color: Colors.red,)),
                              ),
                              Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(0))
                                ),                                 child: Center(child: Icon(Icons.star,color: Colors.red,)),
                              ),Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(0))
                                ),                                 child: Center(child: Icon(Icons.circle_outlined,color: Colors.red,)),
                              ),

                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height/40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(onTap: (){
                                setState(() {
                                  clicked = false;
                                });
                              }, child:Container(
                                height: 40,width: 150,color: Colors.red,
                                  child: Center(child: Text("Finish",style: TextStyle(color: Colors.white),))),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("in  ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                  Text("  fb  ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                  Text("  tw",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                                ],
                              )
                             ],
                          )
                        ],

                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(25),
                    ),
                    elevation: 5,
                    child: Container(
                      height: MediaQuery.of(context).size.height/1.3,
                      width: MediaQuery.of(context).size.width/2,
                      child:clicked != true ?
                      Image.asset(redBird,fit: BoxFit.fill,) :
                      Image.asset(animate,
                        fit: BoxFit.fill,
                      ),),
                  ),
                ],
              ),
            ),
          ),
        )
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
