import 'package:courier/pages/Jobs.dart';
import 'package:courier/utils/CustomColors.dart';
import 'package:courier/utils/jeff_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  CustomColors color = CustomColors();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 320, height: 569.0, allowFontScaling: false);
    // TODO: implement build
    return WillPopScope(
      onWillPop: () async => false,
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: _bottomNavigator(),
          body: TabBarView(
            children: <Widget>[
              Jobs(),
              Jobs(),
              Jobs(),
              Jobs(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomNavigator() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 0,
      child: TabBar(
        unselectedLabelColor: color.blue,
        labelColor: color.blue1,
        tabs: <Widget>[
          Tab(
            icon: FaIcon(
              FontAwesomeIcons.list,
              size: ScreenUtil().setSp(13),
              semanticLabel: 'Jobs',
            ),
            child: Text(
              'Jobs',
              style: TextStyle(
                fontSize: ScreenUtil().setSp(10),
              ),
            ),
          ),
          Tab(
            icon: FaIcon(
              FontAwesomeIcons.map,
              size: ScreenUtil().setSp(13),
              semanticLabel: 'Maps',
            ),
            child: Text(
              'Maps',
              style: TextStyle(
                fontSize: ScreenUtil().setSp(10),
              ),
            ),
          ),
          Tab(
            icon: FaIcon(
              FontAwesomeIcons.shoppingBag,
              size: ScreenUtil().setSp(13),
              semanticLabel: 'Shops',
            ),
            child: Text(
              'Shops',
              style: TextStyle(
                fontSize: ScreenUtil().setSp(10),
              ),
            ),
          ),
          Tab(
            icon: FaIcon(
              FontAwesomeIcons.userCircle,
              size: ScreenUtil().setSp(13),
              semanticLabel: 'Profile',
            ),
            child: Text(
              'Profile',
              style: TextStyle(
                fontSize: ScreenUtil().setSp(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
