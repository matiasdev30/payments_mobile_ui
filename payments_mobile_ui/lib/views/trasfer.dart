import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:root/const/const.dart';
import 'package:root/widget/card_user.dart';
import 'package:root/widget/list_cards.dart';
import 'package:root/widget/my_nav_bar.dart';
import 'package:root/widget/my_widget.dart';

class Transfer extends StatefulWidget {
  @override
  _TransferState createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  bool isTransfer = true;

  double priceFinal = 100;

  bool isFavorite = false;

  List<double> listMoney = [25, 50, 100, 200];

  List<Percentagem> everyWeek = [
    Percentagem(
        dayOfWeek: "Seg", size: 130, color: PERCENT_COLOR.withOpacity(0.2)),
    Percentagem(dayOfWeek: "Ter", size: 70, color: PERCENT_COLOR),
    Percentagem(
        dayOfWeek: "Qua", size: 100, color: PERCENT_COLOR.withOpacity(0.2)),
    Percentagem(
        dayOfWeek: "Sui", size: 80, color: PERCENT_COLOR.withOpacity(0.2)),
    Percentagem(dayOfWeek: "Sex", size: 90, color: PERCENT_COLOR),
    Percentagem(dayOfWeek: "Sab", size: 50, color: PERCENT_COLOR),
    Percentagem(
        dayOfWeek: "Dom", size: 30, color: PERCENT_COLOR.withOpacity(0.2))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Color(0xffEEF0F2),
        bottomNavigationBar: AnimatedContainer(
          height: 55,
          width: double.infinity,
          duration: Duration(milliseconds: 400),
          padding: EdgeInsets.only(left: 30, right: 30),
          decoration: BoxDecoration(
              color: isTransfer == true ? Colors.white : Color(0xffEEF0F2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(isTransfer == true ? 30 : 0),
                topRight: Radius.circular(isTransfer == true ? 30 : 0),
              ),
              ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  size: 20,
                  color: isTransfer == true ? firstColor : Colors.grey.shade400,
                ),
                onPressed: () {
                  setState(() {
                    isTransfer = true;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.data_usage,
                  size: 20,
                  color:
                      isTransfer == false ? firstColor : Colors.grey.shade400,
                ),
                onPressed: () {
                  setState(() {
                    isTransfer = false;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications_active_outlined,
                  size: 20,
                  color: Colors.grey.shade400,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.person,
                  size: 20,
                  color: Colors.grey.shade400,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
        body: isTransfer == true
            ? transfer()
            : Container(
              decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                        boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(4, 4),
                  spreadRadius: 0.2,
                  blurRadius: 2,
                ),
                BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(-4, 0),
                  spreadRadius: 0.2,
                  blurRadius: 2,
                ),
              ]),
              child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                          boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey.shade200,
                    offset: Offset(4, 4),
                    spreadRadius: 0.2,
                    blurRadius: 2,
                  ),
                  BoxShadow(
                    color: Colors.grey.shade200,
                    offset: Offset(-4, 0),
                    spreadRadius: 0.2,
                    blurRadius: 2,
                  ),
                ]
                          ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Stats',
                                style: GoogleFonts.montserrat(
                                  fontSize: 13,
                                  color: firstColor,
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    color: Color(0xffF2F3F0),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Image.asset('assets/calendar.png')),
                              ),
                              Container(
                                height: 30,
                                width: 140,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Color(0xffF2F3F0),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Row(
                                  children: [
                                    Text(
                                      'Renda',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 10,
                                          color: firstColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                    Text(
                                      'v',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 10,
                                          color: firstColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                        height: 154,
                        width: MediaQuery.of(context).size.width,
                        child: Cards()),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children:
                            everyWeek.map(CardBanc.linePercentagem).toList(),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          cardDate(title: 'Semana', ver: true),
                          cardDate(title: 'Mês'),
                          cardDate(
                            title: 'Ano',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
            ));
  }

  cardDate({String title, bool ver = false}) {
    return Container(
      width: 70,
      height: 32,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: ver == true ? firstColor : Colors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.montserrat(
            fontSize: 10,
            color: ver == true ? Colors.white : firstColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  transfer() {
    return Column(
      children: [
        Container(
          height: 129,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    child: Container(
                      height: 30,
                      width: 40,
                      padding: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        color: Color(0xffF2F3F0),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8)),
                      ),
                      child: Row(
                        children: [
                          Spacer(),
                          Icon(
                            Icons.arrow_back_ios,
                            color: firstColor,
                            size: 16,
                          )
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 20, right: 20, bottom: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Balanco',
                            style: GoogleFonts.montserrat(
                              fontSize: 13,
                              color: firstColor,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '\$ 12,769.00',
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              color: firstColor,
                            ),
                          ),
                        ],
                      ))
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Favoritos',
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: firstColor,
                              ),
                            ),
                            Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                color: firstColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Novo usuario',
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: firstColor,
                              ),
                            ),
                            Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Usuarios',
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: firstColor,
                              ),
                            ),
                            Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            width: double.infinity,
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CardUser(
                  isFavorite: false,
                  name: 'Mvni',
                  nickName: 'Null',
                  img: 'assets/mvni.jpg',
                ),
                SizedBox(
                  width: 8,
                ),
                CardUser(
                  isFavorite: isFavorite,
                  name: 'Anisio',
                  nickName: 'Isidoro',
                  img: 'assets/anisio.jpg',
                ),
                SizedBox(
                  width: 8,
                ),
                CardUser(
                  isFavorite: false,
                  name: 'Pedro',
                  nickName: 'Massango',
                  img: 'assets/pedro.jpg',
                ),
                SizedBox(
                  width: 8,
                ),
                CardUser(
                  isFavorite: false,
                  name: 'Henrique',
                  nickName: 'Kakutalua',
                  img: 'assets/henrique.jpg',
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Quantia',
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: firstColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 32,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Text(
                        '\$ $priceFinal',
                        style: GoogleFonts.montserrat(
                          fontSize: 10,
                          color: firstColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/seletor.png',
                        height: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                    height: 32,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: listMoney.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, index) {
                        return cardPrice(price: listMoney[index]);
                      },
                    )),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: double.infinity,
                  height: 32,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Razão:',
                        style: GoogleFonts.montserrat(
                          fontSize: 10,
                          color: firstColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 35,
                        width: 1,
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Pagamento',
                        style: GoogleFonts.montserrat(
                          fontSize: 10,
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'v',
                        style: GoogleFonts.montserrat(
                          fontSize: 10,
                          color: firstColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: double.infinity,
                  height: 32,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: firstColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'Mandar',
                      style: GoogleFonts.montserrat(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  cardPrice({double price}) {
    return GestureDetector(
        onTap: () {
          setState(() {
            priceFinal = price;
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Container(
            width: 50,
            height: 32,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: priceFinal == price ? firstColor : Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              '\$ ${price.floor()}',
              style: GoogleFonts.montserrat(
                fontSize: 10,
                color: priceFinal == price ? Colors.white : firstColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ));
  }
}
