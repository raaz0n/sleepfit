import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sleepfit/common/color.manager.dart';
import 'package:sleepfit/common/font.manager.dart';
import 'package:sleepfit/pages/Journal/journal.screen.dart';
import 'package:sleepfit/pages/Profile/profile.screen.dart';
import 'package:sleepfit/pages/Statistics/statistics.screen.dart';
import 'package:sleepfit/widgets/small.text.widget.dart';

import 'pages/Home/home.screen.dart';

class MainPageScreen extends StatefulWidget {
  const MainPageScreen({Key? key}) : super(key: key);

  @override
  _MainPageScreenState createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 0;

  onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: const [
          HomeScreen(),
          JournalScreen(),
          StatisticsScreen(),
          ProfileScreen()
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        iconList: const [
          FontAwesomeIcons.house,
          FontAwesomeIcons.squareRss,
          FontAwesomeIcons.squarePollVertical,
          FontAwesomeIcons.user,
        ],
        navTitle: const [
          "Home",
          "Journal",
          "Statistics",
          "Profile",
        ],
        onChange: (index) {
          setState(() {
            selectedIndex = index;
            tabController!.index = selectedIndex;
          });
        },
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;
  final List<String> navTitle;

  const CustomBottomNavigationBar(
      {this.defaultSelectedIndex = 0,
      required this.iconList,
      required this.onChange,
      required this.navTitle});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<IconData> _iconList = [];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> navBarItemList = [];
    for (var i = 0; i < _iconList.length; i++) {
      navBarItemList.add(buildNavBarItem(
          icon: _iconList[i], index: i, title: widget.navTitle[i]));
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Divider(
          height: 2,
          color: ColorManager.titleText.withOpacity(0.7),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: navBarItemList,
        ),
      ],
    );
  }

  Widget buildNavBarItem(
      {required IconData icon, required int index, required String title}) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(
          right: 10,
          left: 10,
          bottom: MediaQuery.of(context).size.height * 0.02,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                widget.onChange(index);
                setState(() {
                  _selectedIndex = index;
                });
              },
              icon: FaIcon(
                icon,
                size: 18,
              ),
              color: index == _selectedIndex
                  ? ColorManager.titleText
                  : ColorManager.subTitle.withOpacity(0.4),
            ),
            AppSmallText(
              size: FontSize.s12,
              text: title,
              color: index == _selectedIndex
                  ? ColorManager.titleText
                  : ColorManager.subTitle.withOpacity(0.4),
            )
          ],
        ),
      ),
    );
  }
}
