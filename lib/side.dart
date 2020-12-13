import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage()
    )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> list1 = [
    "SightSeeing","Restaurants Nearby","Hotel For Stay", "Review","Suggestions","Rate This Place"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff392850),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("MENU"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),

          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[

              SizedBox(height: 20,),
              Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children:List.generate((list1.length),(index)
                    {
                      return FlatButton(
                        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
                        onPressed: null,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(list1[index],style: TextStyle(color:Colors.white,fontSize: 24.0),),

                          ],
                        ),

                      );
                    }),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}