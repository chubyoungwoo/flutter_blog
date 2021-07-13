import 'package:flutter/material.dart';
import 'package:flutter_blog/pages/post/detail_page.dart';
import 'package:flutter_blog/pages/post/write_page.dart';
import 'package:flutter_blog/pages/user/login_page.dart';
import 'package:flutter_blog/pages/user/user_info.dart';
import 'package:flutter_blog/size.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _navigation(context),
      appBar: AppBar(),  //기본 뒤로가기가 생성 없앨려면 drawer 설정하면 없어진다.
      body: ListView.separated(
          itemCount: 20,
          itemBuilder: (context, index) {
          return ListTile(
            onTap: () {  //클릭 이벤트
              Get.to(DetailPage(index), arguments: "arguments 속성 테스트");
            },
            title: Text("제목1"),
            leading: Text("1"),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        ),
    );
  }

  Widget _navigation(BuildContext context) {
    return Container(  //왼쪽메뉴 리스트 생성
      width: getDrawerWidth(context),
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Get.to(WritePage());
                },
                child: Text(
                  "글쓰기",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
              Divider(),
              TextButton(
                onPressed: () {
                  Get.to(UserInfo());
                },
                child: Text(
                  "회원정보보기",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),

              ),
              Divider(),
              TextButton(
                onPressed: () {
                  Get.to(LoginPage());
                },
                child: Text(
                  "로그아웃",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
