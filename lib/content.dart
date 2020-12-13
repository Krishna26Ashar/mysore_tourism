import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: MyHome()
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("The Mysore Palace"),),

      body: Container(

          constraints: BoxConstraints.expand(
              height: 200
          ),
          child: imageSlider(context)),

    );


  }

}


Swiper imageSlider(context){
  final imageList = [
    'https://www.fabhotels.com/blog/wp-content/uploads/2019/05/Mysore-palace_600-1280x720.jpg',
    "https://curlytales.com/wp-content/uploads/2019/01/depositphotos_116925416-stock-photo-mysore-palace-in-mysore-india.jpg",
    "https://ramaarya.files.wordpress.com/2020/02/mysore-palace.jpg?w=640",
    "https://d2rdhxfof4qmbb.cloudfront.net/wp-content/uploads/20190116170017/Mysore-Palace-Int-1024x682.jpeg",
  ];
  return new Swiper(
    autoplay: true,
    itemCount: 4,
    itemBuilder: (BuildContext context, int index) {

      return new Image.network(
        imageList[index],
        fit: BoxFit.cover,
      );

    },

    viewportFraction: 0.8,
    scale: 0.9,

  );

}
class Mydata extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Container(

          constraints: BoxConstraints.expand(
              height: 200
          ),
          child: new Text("WELCOME",
            textAlign: TextAlign.center,
          )

    ),
    );


  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

}



