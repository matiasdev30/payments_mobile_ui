import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:root/const/const.dart';

class CardPrice extends StatefulWidget {
  double priceFinal;
  double price;

  CardPrice({this.price, this.priceFinal});

  @override
  _CardPriceState createState() => _CardPriceState();
}

class _CardPriceState extends State<CardPrice> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.priceFinal = widget.price;
        });
        print(widget.price);
        print(widget.priceFinal);
      },
      child: Container(
        width: 50,
        height: 32,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color:
                widget.priceFinal != widget.price ? Colors.white : firstColor,
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          '\$ ${widget.price}',
          style: GoogleFonts.montserrat(
            fontSize: 10,
            color:
                widget.priceFinal != widget.price ? firstColor : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
