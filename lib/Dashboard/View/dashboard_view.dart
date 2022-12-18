import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
          shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(25),
          ),
            elevation: 25,
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 leftSideContainer(),
                  centerContainer(),
                  rightSideContainer()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
/// left Side Container
  Widget leftSideContainer() {
    return  Container(
      height: MediaQuery.of(context).size.height/1.3,
      width: MediaQuery.of(context).size.width/25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.black
      ),
      child: Column(
        children: [
          SizedBox(
              height: 9
          ),
          Container(
              width: MediaQuery.of(context).size.width/32,
              height: MediaQuery.of(context).size.height/14,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.black
              ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.menu_sharp,color: Colors.white,size: 20,))),
          Container(
              width: MediaQuery.of(context).size.width/32,
              height: MediaQuery.of(context).size.height/16,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.yellow.shade300
              ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.dashboard_outlined,color: Colors.black,size: 20,))),
          Container(
              width: MediaQuery.of(context).size.width/32,
              height: MediaQuery.of(context).size.height/14,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.black
              ),child: IconButton(onPressed: (){}, icon: Icon(Icons.account_circle_outlined,color: Colors.white,size: 20,))),
          Container( width: MediaQuery.of(context).size.width/32,
              height: MediaQuery.of(context).size.height/14,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.black
              ),child: IconButton(onPressed: (){}, icon: Icon(Icons.add_alert_rounded,color: Colors.white,size: 20,))),
          Container( width: MediaQuery.of(context).size.width/32,
              height: MediaQuery.of(context).size.height/14,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.black
              ),child: IconButton(onPressed: (){}, icon: Icon(Icons.account_balance_wallet_outlined,color: Colors.white,size: 20,))),
          Container(
              width: MediaQuery.of(context).size.width/32,
              height: MediaQuery.of(context).size.height/14,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.black
              ),child: IconButton(onPressed: (){}, icon: Icon(Icons.add_chart_sharp,color: Colors.white,size: 20,))),
          Container( width: MediaQuery.of(context).size.width/32,
              height: MediaQuery.of(context).size.height/14,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.black
              ),child: IconButton(onPressed: (){}, icon: Icon(Icons.health_and_safety_sharp,color: Colors.white,size: 20,))),
          Container(
              width: MediaQuery.of(context).size.width/32,
              height: MediaQuery.of(context).size.height/14,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.black
              ),child: IconButton(onPressed: (){}, icon: Icon(Icons.dashboard_customize_outlined,color: Colors.white,size: 20,))),

          SizedBox(
              height: MediaQuery.of(context).size.height/10
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.white,size: 20,)),

        ],
      ),
    );
  }

  /// center Container
 Widget centerContainer(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: MediaQuery.of(context).size.height/2.2,
          width: MediaQuery.of(context).size.width/1.6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.teal.shade800

          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/55,
                ),
                Container(
                  width: MediaQuery.of(context).size.width/6,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Portfolio Index",style: TextStyle(color: Colors.white,fontSize: 15),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("14",style: TextStyle(color: Colors.white,fontSize: 160,fontWeight: FontWeight.w400),),
                          Text("%",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w400),),
                        ],
                      ),
                      Text("Apple",style: TextStyle(color: Colors.white),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("0.17",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),),
                          Text("(0.215%)",style: TextStyle(color: Colors.green,fontSize:10,fontWeight: FontWeight.w400),),
                        ],
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                      Text("Stock Exchange",style: TextStyle(color: Colors.white),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Text("0.17",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),),
                          Text("(0.215%)",style: TextStyle(color: Colors.green,fontSize:10,fontWeight: FontWeight.w400),),
                        ],
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width/1.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: MediaQuery.of(context).size.height/2.7,
                width: MediaQuery.of(context).size.width/3.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white)
              ),
              Container(
                height: MediaQuery.of(context).size.height/2.7,
                width: MediaQuery.of(context).size.width/3.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white
                ),
              )
            ],
          ),
        )
      ],
    );
 }

 /// Right Side Container
 Widget rightSideContainer(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       Container(
         height: MediaQuery.of(context).size.height/2.5,
         width: MediaQuery.of(context).size.width/5,
         decoration: BoxDecoration(
             borderRadius: BorderRadius.all(Radius.circular(30)),
             color: Colors.yellow.shade300
             
         ),
         child: Padding(
           padding: EdgeInsets.all(20),
           child: Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Exchange",style: TextStyle(color: Colors.black),),
                   Icon(Icons.arrow_right_alt_rounded,color: Colors.black,)
                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("1\$",style: TextStyle(color: Colors.black),),
                   Text("90.0000 TK",style: TextStyle(color: Colors.black),),
                 ],
               ),
               Text("Get"),
               Container(
                 width: MediaQuery.of(context).size.width/8,
                 height: MediaQuery.of(context).size.height/18,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white
                 ),
                 child: Row(
                   children: [
                     Text("90.0000")
                   ],
                 ),
               )
             ],
           ),
         ),
         
       ),
        Container(
          height: MediaQuery.of(context).size.height/2.5,
          width: MediaQuery.of(context).size.width/5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.black
          ),
        )
      ],
    );
 }
}
