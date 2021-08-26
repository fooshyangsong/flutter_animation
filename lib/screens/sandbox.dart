import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  @override
  _SandboxState createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  double _opacity = 1;
  double _margin = 0;
  double _width = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedContainer(
          margin: EdgeInsets.all(_margin),
          width: _width,
          color: _color,
          duration: Duration(seconds: 1),
          child: Column(
            children: [
              RaisedButton(
                onPressed: () {
                  setState(() {
                    if (_margin == 0) {
                      _margin = 50;
                    } else {
                      _margin = 0;
                    }
                  });
                },
                child: Text('animate margin'),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    if (_color == Colors.blue) {
                      _color = Colors.purple;
                    } else {
                      _color = Colors.blue;
                    }
                  });
                },
                child: Text('animate colour'),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    if (_opacity == 0) {
                      _opacity = 1;
                    } else {
                      _opacity = 0;
                    }
                  });
                },
                child: Text('animate opacity'),
              ),
              AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 2),
                child: Text(
                  'HideMe',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//--MIXIN CONCEPTS--
//Mixin is a way to add extra abilites and functionality to classes in a way that standard class inheritance doesn't allow us easily
//Also allow different classes to share different functionality without just relying on inheritance which can be useful
// void main() {
// //   User().postComment();
// //   Moderator().postComment();
// //   Moderator().deleteComment();
// //   Publisher().postComment();
// //   Publisher().publishArticle();
//   Admin().postComment();
//   Admin().deleteComment();
//   Admin().publishArticle();
// }

//mixins
// mixin CanPublishArticle {
//   void publishArticle() {
//     print('article published');
//   }
// }
//
// class User {
//   void postComment() {
//     print('posted comment');
//   }
// }
//
// class Moderator extends User {
//   void deleteComment() {
//     print('deleted comment');
//   }
// }
//
// class Publisher extends User with CanPublishArticle {
//   //Replace with mixin
//   // void publishArticle() {
//   //   print('article published');
//   // }
// }
//
// class Admin extends Moderator with CanPublishArticle {}
