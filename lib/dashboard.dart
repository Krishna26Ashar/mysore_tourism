
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mysore_tourism/content.dart';

void main()=> runApp(MaterialApp(home: GridDashboard()),);
class GridDashboard extends StatelessWidget {
  static const String _title = 'DASHBOARD';
  Items item1 = new Items(

      title: "The Mysore Palace",
      img: "assets/palace.png");

  Items item2 = new Items(
    title: "Brindavan gardens",
    img: "assets/garden.png",
  );
  Items item3 = new Items(
    title: "Karanji Lake",
    img: "assets/karlake.png",
  );
  Items item4 = new Items(
    title: "Shuka Vana",
    img: "assets/shuka.jpg",
  );
  Items item5 = new Items(
    title: "Sanjeevini Park",
    img: "assets/san.jpg",
  );
  Items item6 = new Items(
    title: "Lalitha Mahal",
    img: "assets/mahal.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () { Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MyHome();
                        },
                      ),
                    );}, // handle your image tap here
                    child: Image.asset(
                      data.img,
                      fit: BoxFit.cover, // this is the solution for border
                      width: 110.0,
                      height: 110.0,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,

                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(

                    height: 8,
                  ),

                  SizedBox(
                    height: 14,
                  ),

                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title,this.img});
}