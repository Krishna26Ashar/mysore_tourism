import 'package:flutter/material.dart';
import 'package:mysore_tourism/dash_home.dart';
void main()=> runApp(new MyApp());
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context )
  {
    return new MaterialApp(
        home: new LoginPage(),
        theme: new ThemeData(
            primarySwatch: Colors.blue
        )
    );
  }
}
class LoginPage extends StatefulWidget
{
  @override
  State createState() => new LoginPageState();
}
class LoginPageState extends State<LoginPage>
{
  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: new Stack(
        fit : StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/login.jpg"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Form(
                child: new Theme(
                  data: new ThemeData(
                      brightness: Brightness.dark, primarySwatch: Colors.teal ,
                      inputDecorationTheme: new InputDecorationTheme(
                          labelStyle: new TextStyle(
                              color: Colors.teal,
                              fontSize: 20.0
                          )
                      )),
                  child: Container(
                    padding: const EdgeInsets.all(50.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40.0),
                          child: new Text(
                            'Namaste' ,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              shadows: [
                                Shadow(
                                    color: Colors.blue ,
                                    blurRadius: 10.0,
                                    offset : Offset(5.0,5.0)
                                ),
                                Shadow(
                                    color : Colors.red ,
                                    blurRadius: 10.0 ,
                                    offset: Offset(-5.0,5.0)
                                )
                              ],
                            ),
                          ),
                        ),
                        new TextFormField(
                          decoration:  new InputDecoration(
                            labelText: "Enter Email",
                          ),
                          keyboardType:  TextInputType.emailAddress,
                        ),
                        new TextFormField(
                          decoration:  new InputDecoration(
                            labelText: "Enter Password",
                          ),
                          keyboardType:  TextInputType.text,
                          obscureText: true,
                        ),
                        new Padding(padding: const EdgeInsets.only(top : 40.0)
                        ),
                        new MaterialButton(

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.teal)
                          ),
                          height: 50.0,
                          minWidth: 300.0,
                          textColor: Colors.white ,
                          child: new Text( "LOGIN", style: TextStyle( fontSize: 15.0),),
                          onPressed: ()=> {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Home();
                                },
                              ),
                            ),
                          },

                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 200),
                        ),

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

