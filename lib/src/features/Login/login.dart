import 'package:flutter/material.dart';
import 'package:like/src/features/Login/components/form.dart';
import 'package:like/src/features/Login/components/show_form_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isFormVisible = false;

  _changeFormVisibility() {
    setState(() {
      _isFormVisible = !_isFormVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.redAccent.withOpacity(0.8),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(seconds: 1),
              alignment:
                  _isFormVisible ? Alignment.topCenter : Alignment.center,
              padding: _isFormVisible
                  ? EdgeInsets.only(top: 100)
                  : EdgeInsets.all(0),
              child: Image.asset(
                'lib/src/assets/images/logo_cutted.png',
                width: 120,
                height: 120,
              ),
            ),
            AnimatedPositioned(
              duration: Duration(seconds: 1),
              left: _isFormVisible
                  ? 0
                  : (MediaQuery.of(context).size.width * 0.7) / 2,
              width: _isFormVisible
                  ? MediaQuery.of(context).size.width
                  : MediaQuery.of(context).size.width * 0.3,
              height: _isFormVisible
                  ? MediaQuery.of(context).size.height * 0.6
                  : MediaQuery.of(context).size.height * 0.15,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(100.0),
                    topLeft: Radius.circular(100.0),
                  ),
                ),
                child: _isFormVisible
                    ? LoginForm()
                    : ShowFormButton(onPress: _changeFormVisibility),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
