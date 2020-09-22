import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;

  Widget _buildUserTF() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Username',
            style: TextStyle(color: Colors.black, fontFamily: 'OpenSans'),
          ),
          SizedBox(height: 30.0),
          Container(
              alignment: Alignment.centerLeft,
              decoration: Decoration(
                 ,
                ),
              height: 60.0,
              child: TextField(
                  keyboardType: TextInputType.name,
                  style: TextStyle(color: Colors.black, fontFamily: 'OpenSans'),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0),
                    prefix: Icon(
                      Icons.account_circle,
                      color: Colors.black,
                    ),
                    hintText: 'Enter you username',
                    //hintStyle: kHintTextStyle,
                  ))),
        ]);
  }

  Widget _buildPasswordTF() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Password',
            //style: kLabelStyle,
          ),
          SizedBox(height: 30.0),
          Container(
              alignment: Alignment.centerLeft,
              //decoration: kBoxDecorationStyle,
              height: 60.0,
              child: TextField(
                obscureText: true,
                keyboardType: TextInputType.name,
                style: TextStyle(color: Colors.black, fontFamily: 'OpenSans'),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefix: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  hintText: 'Enter you password',
                  //hintStyle: kHintTextStyle,
                 ))),
        ]);
  }

  Widget _buildRememberMeCheckBox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value;
                });
              },
            ),
          ),
          Text('Remember Me'
              //style: kLabelStyle,
              ),
        ],
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => print('Login Button Pressed'),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.orange,
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 10.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
        ),
        Container(
            height: double.infinity,
            child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 120.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Sign in',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'OpenSans',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 30.0),
                    _buildUserTF(),
                    SizedBox(height: 30.0),
                    _buildPasswordTF(),
                    SizedBox(height: 30.0),
                    _buildRememberMeCheckBox(),
                    _buildLoginBtn(),
                  ],
                )))
      ]),
    );
  }
}
