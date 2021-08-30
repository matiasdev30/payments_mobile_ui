import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:root/const/const.dart';

class CardBanc {
  static Widget linePercentagem(Percentagem day) => Column(
    mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: day.size,
            width: 10,
            decoration: BoxDecoration(
                color: day.color,
                borderRadius: BorderRadius.circular(30)),
          ),
          SizedBox(height: 5.0,),
          Text(
            day.dayOfWeek ?? "",
            style: GoogleFonts.montserrat(
                        fontSize: 11,
                        color: firstColor,
                      ),
                    
          )
        ],
      );


  static Widget cardMulticaixa({String bankName = '', Size size, double heightLogo, Color backgroudColor, String bankLogo, Color fontColor}) => ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: size.width,
          height: size.height / 4.5,
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
          //margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 14.0),
          decoration: BoxDecoration(
              color: backgroudColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    blurRadius: 5,
                    offset: Offset(0.0, 3.0))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Image.asset(
                        bankLogo,
                        height: heightLogo,
                      ),
                      Text(
                        bankName,
                        style: GoogleFonts.montserrat(
                        fontSize: 13,
                        color: fontColor,
                        fontWeight: FontWeight.bold
                      ),
                      )
                    ],
                  ),
                  Image.asset(
                    "assets/logo.png",
                    height: 25,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/chip.png",
                fit: BoxFit.cover,
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: Text(
                      "3023",
                      style: GoogleFonts.montserrat(
                        fontSize: 13,
                        color: fontColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "8352",
                      style: GoogleFonts.montserrat(
                        fontSize: 13,
                        color: fontColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "5697",
                     style: GoogleFonts.montserrat(
                        fontSize: 13,
                        color: fontColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "0203",
                      style: GoogleFonts.montserrat(
                        fontSize: 13,
                        color: fontColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Proprietário",
                        style: GoogleFonts.montserrat(
                        fontSize: 10,
                        color: fontColor,
                      ),
                      ),
                      Text(
                        "Braulio Cassule",
                        style: GoogleFonts.montserrat(
                        fontSize: 13,
                        color: fontColor,
                        fontWeight: FontWeight.bold
                      ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Validade:",
                        style: GoogleFonts.montserrat(
                        fontSize: 10,
                        color: fontColor,
                      ),
                      ),
                      Text(
                        "03/24",
                        style: GoogleFonts.montserrat(
                        fontSize: 13,
                        color: fontColor,
                        fontWeight: FontWeight.bold
                      ),
                      )
                    ],
                  )
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      );

  static Widget cardMulticaixaX({Size size}) => ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: size.width,
          height: size.height / 4.5,
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
          //margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 14.0),
          decoration: BoxDecoration(
              color: COLOR_CARD,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    blurRadius: 5,
                    offset: Offset(0.0, 3.0))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Saldo",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),
                      ),
                      Text(
                        "500.000,00 Kz",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Image.asset(
                    "assets/logo.png",
                    height: 20,
                  )
                ],
              ),
              Image.asset(
                "assets/chip.png",
                fit: BoxFit.cover,
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Text(
                      "****",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "****",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "****",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "0203",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Proprietário",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),
                      ),
                      Text(
                        "Braulio Cassule",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Validade:",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11.0,
                        ),
                      ),
                      Text(
                        "03/24",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      );
}
