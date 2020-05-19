import 'package:courier/utils/CustomColors.dart';
import 'package:courier/utils/jeff_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Jobs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _JobsState();
  }
}

class _JobsState extends State<Jobs> {
  CustomColors color = CustomColors();

  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 320, height: 569.0, allowFontScaling: false);
    // TODO: implement build
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: _appBar(),
      ),
    );
  }

  Widget _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'assets/img/logo.png',
            fit: BoxFit.cover,
            height: ScreenUtil().setWidth(35),
          ),
        ],
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(ScreenUtil().setHeight(75)),
        child: TabBar(
          labelColor: color.blue,
          isScrollable: true,
          tabs: [
            Tab(
              icon: Icon(
                JeffIcons.pending,
                size: ScreenUtil().setSp(20),
              ),
              child: Text(
                'Pending',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(11),
                ),
              ),
            ),
            Tab(
              icon: Icon(
                JeffIcons.delivery_v2,
                size: ScreenUtil().setSp(20),
              ),
              child: Text(
                'Verify',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(11),
                ),
              ),
            ),
            Tab(
              icon: Icon(
                JeffIcons.washing,
                size: ScreenUtil().setSp(20),
              ),
              child: Text(
                'Washing',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(11),
                ),
              ),
            ),
            Tab(
              icon: Icon(
                JeffIcons.delivery,
                size: ScreenUtil().setSp(20),
              ),
              child: Text(
                'Ready',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(11),
                ),
              ),
            ),
            Tab(
              icon: Icon(
                JeffIcons.delivered,
                size: ScreenUtil().setSp(20),
              ),
              child: Text(
                'Delivered',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(11),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
