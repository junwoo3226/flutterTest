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
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(title: Text('무엇 일까요?')),
        body: Center(
          child: Container(
            width: 500, height: 1200,color: Colors.white,
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150, height: 150,
                        margin: EdgeInsets.fromLTRB(0,150, 0, 0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 20),
                            color: Colors.blue
                        ),
                        child: Text('테스트'),
                      ),
                      Container(
                        width: 150, height: 150,
                        margin: EdgeInsets.fromLTRB(0,150, 0, 0),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            border: Border.all(color: Colors.black, width: 20)
                        ),
                        child: Text("안경"),
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      width: 100, height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.black, width: 5),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 10, height: 10,
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                            ),
                            Container(
                              width: 10, height: 10,
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 150, height: 30,
                      margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(150), bottomLeft: Radius.circular(150), topLeft: Radius.circular(50),topRight: Radius.circular(50))
                      ),

                    ),
                  )
                ],
              ),
            ),
          ),
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
