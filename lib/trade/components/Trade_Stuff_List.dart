import 'package:fling/trade/trade_stuff_detail.dart';
import 'package:flutter/material.dart';

final List<String> title = <String>[
  "함께 음식 팔 사람",
  "함께 보석 팔 사람",
  "함께 옷 팔 사람",
  "함께 뭔가 팔 사람",
  "함께?",
  "함께 붸?",
  "함께 에엙?"
];

class StuffList extends StatelessWidget {
  const StuffList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return GridView.builder(
        padding:
            EdgeInsets.only(left: sizeWidth * 0.064),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: title.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TradeSfDetail()));
                  },
                  child: Column(children: [
                    Container(
                        width: sizeWidth * 0.404,
                        height: sizeHeight * 0.125,
                        color: const Color(0xffD8D8D8)),
                    Stack(children: [
                      Container(
                          width: sizeWidth * 0.404,
                          height: sizeHeight * 0.0548,
                          color: const Color(0xffFFFFFF)),
                      Positioned(
                          left: sizeWidth * 0.01192,
                          top: sizeHeight * 0.0055,
                          child: SizedBox(
                            width: sizeWidth * 0.305,
                            height: sizeHeight * 0.043,
                            child: Text(title[index],
                                style: TextStyle(
                                    fontSize: sizeWidth * 0.032,
                                    fontWeight: FontWeight.w400)),
                          ))
                    ])
                  ])),
              Positioned(
                left: sizeWidth * 0.331,
                top: sizeWidth * 0.276,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: sizeWidth * 0.05828,
                    height: sizeHeight * 0.0369,
                    color: Colors.yellow,
                  ),
                ),
              )
            ],
          );
        });
  }
}

class LittleSfList extends StatelessWidget {
  const LittleSfList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return GridView.builder(
        padding:
        EdgeInsets.only(left: sizeWidth * 0.064),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TradeSfDetail()));
                  },
                  child: Column(children: [
                    Container(
                        width: sizeWidth * 0.404,
                        height: sizeHeight * 0.125,
                        color: const Color(0xffD8D8D8)),
                    Stack(children: [
                      Container(
                          width: sizeWidth * 0.404,
                          height: sizeHeight * 0.0548,
                          color: const Color(0xffFFFFFF)),
                      Positioned(
                          left: sizeWidth * 0.01192,
                          top: sizeHeight * 0.0055,
                          child: SizedBox(
                            width: sizeWidth * 0.305,
                            height: sizeHeight * 0.043,
                            child: Text(title[index],
                                style: TextStyle(
                                    fontSize: sizeWidth * 0.032,
                                    fontWeight: FontWeight.w400)),
                          ))
                    ])
                  ])),
              Positioned(
                left: sizeWidth * 0.331,
                top: sizeWidth * 0.276,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: sizeWidth * 0.05828,
                    height: sizeHeight * 0.0369,
                    color: Colors.yellow,
                  ),
                ),
              )
            ],
          );
        });
}}
