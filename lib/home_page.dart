import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  FirebaseUser user;

  HomePage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Instagram Clon',
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return Padding(
        padding: EdgeInsets.all(8.0),
        // 작은 화면에서 잘릴 것 같다면 스크롤을 넣어줘라.
        // 아이폰의 노치를 고려해서 SafeArea 안에서 스크롤
        child: SafeArea(
            child: SingleChildScrollView(
                child: Center(
                    child: Column(
                      children: <Widget>[
                        Text('Heostagram에 오신 것을 환영합니다',
                            style: TextStyle(fontSize: 24.0)),
                        Padding(padding: EdgeInsets.all(8.0)),
                        Text('사진과 동영상을 보려면 팔로우하세요.'),
                        Padding(padding: EdgeInsets.all(16.0)),
                        SizedBox(
                          width: 260.0,
                          child: Card(
                            elevation: 4.0,
                            child: Padding(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                      width: 80.0,
                                      height: 80.0,
                                      child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              user.photoUrl))),
                                  Padding(padding: EdgeInsets.all(8.0)),
                                  Text('이메일 주소',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text('이름'),
                                  Padding(padding: EdgeInsets.all(8.0)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 70.0,
                                        height: 70.0,
                                        child: Image.network(
                                            'https://images.unsplash.com/photo-1587982789909-8fa80a3f840b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
                                            fit: BoxFit.cover),
                                      ),
                                      Padding(padding: EdgeInsets.all(1.0)),
                                      SizedBox(
                                        width: 70.0,
                                        height: 70.0,
                                        child: Image.network(
                                            'https://images.unsplash.com/photo-1587982789909-8fa80a3f840b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
                                            fit: BoxFit.cover),
                                      ),
                                      Padding(padding: EdgeInsets.all(1.0)),
                                      SizedBox(
                                        width: 70.0,
                                        height: 70.0,
                                        child: Image.network(
                                            'https://images.unsplash.com/photo-1588061418826-8c03e78ea9b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
                                            fit: BoxFit.cover),
                                      )
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.all(4.0)),
                                  Text('Facebook 친구'),
                                  Padding(padding: EdgeInsets.all(4.0)),
                                  RaisedButton(
                                    child: Text('팔로우'),
                                    color: Colors.blueAccent,
                                    textColor: Colors.white,
                                    onPressed: () {},
                                  ),
                                  Padding(padding: EdgeInsets.all(4.0)),

                                ],
                              ), padding: EdgeInsets.all(4.0),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}
