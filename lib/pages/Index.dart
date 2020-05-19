import 'package:courier/pages/Dashboard.dart';
import 'package:courier/pages/Login.dart';
import 'package:courier/utils/CustomColors.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Index extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  CustomColors color = CustomColors();

  Widget _home() => Dashboard();
  @override
  Widget build(Object context) {
    // TODO: implement build
    return MaterialApp(
      locale: DevicePreview.of(context)?.locale, // <--- Add the locale
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primaryColor: color.blue,
      ),
      home: _home(),
      routes: {
        '/login': (c) => Login(),
      },
    );
  }
}
