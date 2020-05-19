import 'package:courier/utils/CustomColors.dart';
import 'package:courier/utils/CustomFonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final color = CustomColors();
  final font = CustomFonts();
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 320, height: 569.0, allowFontScaling: false);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _header(),
            _body(),
            _footer(),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Container(
      height: ScreenUtil.screenHeightDp / 2.0,
      width: double.infinity,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/img/logo.png',
              height: ScreenUtil().setHeight(100),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            Text(
              'On The Wash',
              style: TextStyle(
                fontSize: ScreenUtil().setSp(20),
                color: color.blue,
                fontFamily: font.font,
              ),
            ),
            Text(
              'for Courier',
              style: TextStyle(
                fontSize: ScreenUtil().setSp(17),
                color: color.blue,
                fontFamily: font.font,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _body() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setHeight(30),
        vertical: 0,
      ),
      height: ScreenUtil.screenHeightDp -
          (ScreenUtil.screenHeightDp / 2.0) -
          ScreenUtil().setHeight(20),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          _email(),
          _pwd(),
          SizedBox(height: ScreenUtil().setHeight(15)),
          _loginBtn(context),
          SizedBox(height: ScreenUtil().setHeight(5)),
          _forgotPwd(context),
        ],
      ),
    );
  }

  Widget _email() {
    return TextFormField(
      onChanged: null,
      style: TextStyle(
        fontSize: ScreenUtil().setSp(13),
        height: ScreenUtil().setHeight(1.0),
      ),
      decoration: InputDecoration(
        labelText: 'Email/Phone Number',
        prefixIcon: Icon(
          Icons.email,
          color: color.blue,
          size: ScreenUtil().setWidth(18),
        ),
        labelStyle: TextStyle(
          fontFamily: 'OpenSans',
          fontSize: ScreenUtil().setSp(11),
          fontWeight: FontWeight.normal,
          color: color.grey,
        ),
        // errorText: snapshot.error,
        errorStyle: TextStyle(
          fontSize: ScreenUtil().setSp(8),
        ),
      ),
    );
  }

  Widget _pwd() {
    return StreamBuilder(
      stream: null,
      builder: (context, snapshot) {
        return TextFormField(
          onChanged: null,
          obscureText: isHidden,
          style: TextStyle(
            fontSize: ScreenUtil().setSp(13),
            height: ScreenUtil().setHeight(1),
          ),
          decoration: InputDecoration(
            labelText: 'Password',
            suffix: GestureDetector(
              onTap: () {
                setState(() {
                  isHidden = isHidden == true ? false : true;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: FaIcon(
                  isHidden == true
                      ? FontAwesomeIcons.eye
                      : FontAwesomeIcons.solidEye,
                  size: ScreenUtil().setHeight(16),
                  color: color.blue,
                ),
              ),
            ),
            prefixIcon: Icon(Icons.lock,
                color: color.blue, size: ScreenUtil().setWidth(18)),
            labelStyle: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: ScreenUtil().setSp(11),
              fontWeight: FontWeight.normal,
              color: color.grey,
            ),
            errorText: snapshot.error,
            errorStyle: TextStyle(
              fontSize: ScreenUtil().setSp(8),
            ),
          ),
        );
      },
    );
  }

  Widget _loginBtn(context) {
    return StreamBuilder(
      stream: null,
      builder: (context, snapshot) {
        var data = snapshot.data;
        return Container(
          width: double.infinity,
          child: FlatButton(
            // onPressed: () {
            //   FocusScope.of(context).unfocus();
            //   return data == null || data == false ? null : bl.submit(context);
            // },
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: ScreenUtil().setHeight(10.5),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                  fontSize: ScreenUtil().setSp(11),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            color: color.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        );
      },
    );
  }

  Widget _forgotPwd(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {},
          child: Text(
            'Forgot your Password ?',
            style: TextStyle(
              fontSize: ScreenUtil().setSp(10),
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
              color: color.blue,
            ),
          ),
        )
      ],
    );
  }

  Widget _footer() {
    return Container(
      alignment: Alignment.center,
      height: ScreenUtil().setHeight(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color.blue,
      ),
      child: Text(
        'Copyright 2020, Devseven IT Solution',
        style: TextStyle(
          color: Colors.white,
          fontSize: ScreenUtil().setSp(8),
        ),
      ),
    );
  }
}
