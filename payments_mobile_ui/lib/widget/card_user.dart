import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:root/const/const.dart';

class CardUser extends StatefulWidget {
  bool isFavorite = false;
  String name;
  String nickName;
  String img;

  @override
  _CardUserState createState() => _CardUserState();

  CardUser({this.isFavorite, this.name, this.nickName, this.img});
}

class _CardUserState extends State<CardUser> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isFavorite = widget.isFavorite == true ? false : true;
          print(widget.isFavorite);
        });
      },
      child: Container(
        width: 85,
        height: 180,
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: widget.isFavorite == false ? Colors.white : firstColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(widget.img),
                fit: BoxFit.cover
              )
              ),
               
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Text(
                    widget.name + '\n' + widget.nickName,
                    style: GoogleFonts.montserrat(
                        fontSize: 10,
                        color: widget.isFavorite == false
                            ? firstColor
                            : Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Container(
                    width: 18,
                    height: 18,
                    child: widget.isFavorite == false
                        ? Image.asset(
                            'assets/star.png',
                            height: 30,
                            width: 30,
                          )
                        : Image.asset(
                            'assets/star2.png',
                            height: 30,
                            width: 30,
                          )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
