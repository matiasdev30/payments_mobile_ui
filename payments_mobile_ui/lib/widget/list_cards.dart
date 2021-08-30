import 'package:flutter/material.dart';
import 'package:root/const/const.dart';
import 'package:root/widget/my_widget.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {

  int _numPages = 5;

  PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 0.9);

  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return Row(
      children: [
        AnimatedContainer(
          duration: Duration(microseconds: 150),
          margin: EdgeInsets.symmetric(horizontal: 2.0),
          height: 8,
          width: isActive ? 16.0 : 8,
          decoration: BoxDecoration(
            color: isActive ? firstColor : Colors.black12,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 144,
          child: PageView(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            physics: ClampingScrollPhysics(),
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              _cardCredit(
                card: CardBanc.cardMulticaixa(
                    fontColor: Colors.white,
                    size: MediaQuery.of(context).size,
                    bankLogo: 'assets/atlantico.png',
                    bankName: 'Atlantico',
                    heightLogo: 30,
                    backgroudColor: Color(0xff0097BD)),
              ),
              _cardCredit(
                card: CardBanc.cardMulticaixa(
                    fontColor: Colors.white,
                    size: MediaQuery.of(context).size,
                    bankLogo: 'assets/bic.png',
                    bankName: 'BIC',
                    heightLogo: 30,
                    backgroudColor: Color(0xffD42D12)),
              ),
              _cardCredit(
                card: CardBanc.cardMulticaixa(
                    fontColor: Colors.white,
                    size: MediaQuery.of(context).size,
                    bankLogo: 'assets/bfa.png',
                    bankName: 'BFA',
                    heightLogo: 30,
                    backgroudColor: Color(0xffD25100)),
              ),
              _cardCredit(
                card: CardBanc.cardMulticaixa(
                    fontColor: COLOR_BAI,
                    size: MediaQuery.of(context).size,
                    bankLogo: 'assets/bai.png',
                    heightLogo: 20,
                    backgroudColor: Colors.white),
              ),
              
              _cardCredit(
                card: CardBanc.cardMulticaixa(
                    fontColor: Color(0xffFFAC03),
                    size: MediaQuery.of(context).size,
                    bankLogo: 'assets/sol.jpg',
                    heightLogo: 30,
                    backgroudColor: Colors.white),
              ),
            ],
          ),
        ),
        SizedBox(height: 5,),
        Container(
                    height: 5,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _buildPageIndicator(),
                      ),
                    ),
                  ),
      ],
    );
  }

  _cardCredit({card}) {
    return Padding(
        padding: EdgeInsets.only(left: 5, right: 5),
        child: Container(
          width: MediaQuery.of(context).size.width - 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: card,
        ));
  }
}
