import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Talent Hire',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: FlutterLogo(

          size: 25
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed:(){},
          icon:Icon(Icons.arrow_back),
          color:Colors.grey,
        ),
          actions:<Widget>[
            IconButton(
                onPressed:(){},
                color: Colors.grey,
                icon: Icon(Icons.menu)
            )
          ]
      ),
      body: ListView(
        shrinkWrap:true,
        children:<Widget>[
          Stack(
            children:<Widget>[
              Container(
                alignment: Alignment.center,
                height:100,
                color:Colors.white,
                child:Text("Get Coaching", style:TextStyle(fontFamily:'Montserrat', fontSize:20)),
              ),
              Container(
                alignment:Alignment.center,
                

                margin: EdgeInsets.fromLTRB(25,80,25,0),
                padding: EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  boxShadow:[
                    BoxShadow(blurRadius: 5,offset: Offset(0,3),
                    color: Colors.grey.withOpacity(.08), spreadRadius: 5)
                  ]
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          children: [
                            Container(
                              alignment:Alignment.topLeft,
                              child: Text("YOU HAVE", style:TextStyle(color: Colors.grey)),
                            ),


                            Row(
                              children: [
                                Text("206",style: TextStyle(
                                    color: Colors.black,fontSize:40,fontWeight: FontWeight.bold
                                ),),
                                Icon(Icons.favorite,color: Colors.red,)
                              ],
                            ),
                          ],
                        ),


                        SizedBox(width: 105),
                        Container(
                          width: 100,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent.withOpacity(0.2),borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child:Text("Buy More", style: TextStyle(
                            color:Colors.green,fontSize: 16, fontWeight: FontWeight.bold
                          ),) ,),
                        )

                      ],

                    )
                  ]
                ),

              )
            ]
          ),
          SizedBox(height: 40,),
          Container(
            margin: EdgeInsets.only(left:20,right:20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("My Coaches",
                style:TextStyle(color:Colors.grey,fontWeight: FontWeight.bold)),
                Text("View Past Sessions",
                style:TextStyle(color:Colors.green,fontWeight: FontWeight.bold))
              ],
            ),

          )

        ]
      ),

    );
  }
}
