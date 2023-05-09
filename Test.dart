import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // 앱시작 함수 실행
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // 위 4줄은 세팅하기위한 문법으로 무시해도됨

    return MaterialApp( // 마트리아테마를 이용할 수 있음 하지만 구글 스타일임, 아이폰 테마를 이용하기 위해서는 Cupertuino어쩌구()로 이용가능, 그냥 커스터마이징하고 싶어도 MaterialApp() 이용
      home: Scaffold(
          appBar: AppBar(title: Text('앱임')),
          body: Text('안녕'),
          bottomNavigationBar: BottomAppBar(
            child: SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.phone),
                  Icon(Icons.message),
                  Icon(Icons.contact_page),
                ],

              ) ,
            ),
          )

      ),
    );
}
