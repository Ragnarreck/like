import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Имя",
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Пароль",
                filled: true,
                fillColor: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
