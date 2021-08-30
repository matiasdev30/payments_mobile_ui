import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:root/const/const.dart';
import 'package:root/views/trasfer.dart';
import 'package:root/widget/list_cards.dart';
import 'package:root/widget/my_nav_bar.dart';
import 'package:root/widget/my_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF2F3F0),
        bottomNavigationBar: MyNavBar(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    'Overview',
                    style: GoogleFonts.montserrat(
                      fontSize: 13,
                      color: firstColor,
                    ),
                  ),
                  Spacer(),
                  Container(
                      height: 30,
                      width: 30,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                      ),
                      child: Icon(
                        Icons.add,
                        color: firstColor,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 154,
              width: MediaQuery.of(context).size.width,
              child: Cards()
              ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Column(
                children: [
                  
                  Row(
                    children: [
                      Text(
                        'Despesas',
                        style: GoogleFonts.montserrat(
                          fontSize: 13,
                          color: firstColor,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Todas',
                        style: GoogleFonts.montserrat(
                          fontSize: 13,
                          color: firstColor,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: firstColor,
                        size: 14,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _rowService(
                      title: 'Spotify',
                      img: 'assets/spoty.png',
                      date: 'Jun 10 - 12:30 PM',
                      value: '11,99'),
                  SizedBox(
                    height: 10,
                  ),
                  _rowService(
                      title: 'PS Now',
                      img: 'assets/ps.png',
                      date: 'Jun 09 - 08:30 AM',
                      value: '19,99'),
                  SizedBox(
                    height: 10,
                  ),
                  _rowService(
                      title: 'Netflix',
                      img: 'assets/netflix.png',
                      date: 'Jun 08 - 00:24 AM',
                      value: '14,99'),
                  SizedBox(
                    height: 10,
                  ),
                  _rowService(
                      title: 'Xbox Game Pass',
                      img: 'assets/xbox.png',
                      date: 'Jun 07 - 2:40 PM',
                      value: '9,99'),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _btn1(
                          title: 'Pagar',
                          img: 'assets/scan.png',
                          cor: Colors.white),
                      _btn1(
                          title: 'Trasferir',
                          img: 'assets/transfer.png',
                          cor: firstColor,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Transfer(),
                                ));
                          }),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ));
  }

  _btn1({String title, String img, Color cor, Function onTap}) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
          height: 35,
          width: MediaQuery.of(context).size.width / 2 - 25,
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: cor,
            borderRadius: BorderRadius.all(Radius.circular(13)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 20,
                  width: 20,
                  //padding: EdgeInsets.all(5),
                  child: Center(
                    child: Container(
                      child: Image(
                        image: AssetImage(img),
                      ),
                    ),
                  )),
              SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  color: cor == firstColor ? Colors.white : firstColor,
                ),
              ),
            ],
          )),
    );
  }

  _rowService({String title, String date, String value, String img}) {
    return Row(
      children: [
        Container(
            height: 38,
            width: 38,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(13)),
            ),
            child: Center(
              child: Container(
                child: Image(
                  image: AssetImage(img),
                ),
              ),
            )),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.montserrat(
                fontSize: 12,
                color: firstColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              date,
              style: GoogleFonts.montserrat(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Spacer(),
        Text(
          '- Kz ' + value,
          style: GoogleFonts.montserrat(
            fontSize: 12,
            color: firstColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

}
