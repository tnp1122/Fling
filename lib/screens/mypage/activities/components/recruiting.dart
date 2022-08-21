import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<List> contents = [
  ['그림 재능 함게 할 사람', '부산진구-8월 30일~8월 31일'],
  ['액세러리 팔 사람', '부산 수영구-8월 25일']
];

Widget thumbnail =
SvgPicture.asset('assets/images/section_1.svg', fit: BoxFit.cover);
Widget heart =
Image.asset('assets/icons/like_empty.png', width: 28, height: 28);
Widget comment =
Image.asset('assets/icons/comment_2.png', width: 28, height: 28);

Widget listviewBuilder() {
  if (contents.isNotEmpty) {
    return ListView.builder(
        padding: const EdgeInsets.only(left: 13, right: 13),
        scrollDirection: Axis.vertical,
        itemCount: contents.length,
        itemBuilder: (BuildContext context, int index) {
          return frame(index);
        });
  } else {
    return const Center(child: Text('모집중인 게시글이 없어요.'));
  }
}

Widget Function(int index) frame = (index) {
  return Container(
    width: 343,
    height: 190,
    padding: const EdgeInsets.fromLTRB(20, 28, 20, 28),
    color: const Color(0xFFF8F8F8),
    child: Column(children: [
      Row(children: [
      Container(
      height: 94,
          width:94,
          child:thumbnail),
        const Padding(padding: EdgeInsets.only(left: 26)),
        SizedBox(width: 206, child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          Text(contents[index][0]),
          Text(contents[index][1]),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [heart, comment])
        ]))
      ]),
      const Divider(),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [Text('장소 선정중'), Text('모집중')])
    ]),
  );
};

class Recruiting extends StatelessWidget {
  const Recruiting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return listviewBuilder();
  }
}
