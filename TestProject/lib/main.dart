import 'package:flutter/cupertino.dart';
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
        appBar: AppBar(
          leading: Row( //상단바 왼쪽
            children: [
              Text('금호동3가'),
              IconButton(
                  icon: Icon(Icons.expand_more),
                  onPressed: (){}
              )

            ],
          ) ,
          actions: [  //상단바 오른쪽
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Container(
                  child: Icon(Icons.search),
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                Container(
                  child: Icon(Icons.menu),
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                Container(
                    child: Icon(Icons.notifications),
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
              ],
            ),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  child: Image.asset('assets/Dog.jpg'),
                  width: 150, height: 150,
                ),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 300,
                            child: Text(
                              '캐논 DSLR 100D (단렌즈, 충전기 16기가SD 포함)',
                              style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),
                              softWrap: true,
                              maxLines: 2,
                            ),
                        ),
                        SizedBox(
                            child: Text(
                              '성동구 행당동 · 끌올 10분 전',
                              style: TextStyle(fontWeight: FontWeight.w100, color: Colors.grey),
                            )
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                            child: Text(
                              '210,000원',
                              style: TextStyle(fontWeight: FontWeight.w900),
                            )
                        ),
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(child: Icon(Icons.favorite_border),),
                              SizedBox(child: Text('4'),)
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),


        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
