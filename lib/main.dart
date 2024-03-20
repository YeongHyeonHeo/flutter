import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Pretendard'),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffADAEFF),
          title: SvgPicture.asset('assets/icons/REBOOK.svg'),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/arrow_back_ios.svg'),
          ),
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.white,
            ),
            Container(
              width: 430,
              height: 448,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffADAEFF), Colors.white]),
              ),
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    width: 380,
                    height: 600,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Color(0xff5356FF),
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    minimumSize: Size(385, 64),
                  ),
                  child: Text(
                    '사진 선택하기',
                    style: TextStyle(
                      color: Color(0xff5356FF),
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffADAEFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    minimumSize: Size(385, 64),
                  ),
                  child: Text(
                    '시작하기',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 24),
                  ),
                ),
              ],
            ),
            Positioned(
              right: 40,
              bottom: 190,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 330,
                    height: 485,
                    decoration: BoxDecoration(
                      color: Color(0xffF7F7FF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SvgPicture.asset('assets/icons/picture.svg'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '쌓아둔 이메일 삭제하기',
                    style: TextStyle(
                      color: Color(0xff5356FF),
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '쌓아둔 이메일을 삭제해 보세요!',
                    style: TextStyle(
                      color: Color(0xff5356FF),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
