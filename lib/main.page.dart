import 'package:flutter/material.dart';
import 'package:sleepfit/pages/Journal/journal.screen.dart';
import 'package:sleepfit/pages/Profile/profile.screen.dart';
import 'package:sleepfit/pages/Statistics/statistics.screen.dart';

import 'pages/Home/home.screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
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
          Icons.home,
          Icons.dashboard,
          Icons.auto_graph_outlined,
          Icons.person,
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

  const CustomBottomNavigationBar({
    this.defaultSelectedIndex = 0,
    required this.iconList,
    required this.onChange,
  });

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
      navBarItemList.add(buildNavBarItem(icon: _iconList[i], index: i));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: navBarItemList,
    );
  }

  Widget buildNavBarItem({required IconData icon, required int index}) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10, top: 5),
        child: IconButton(
          onPressed: () {
            widget.onChange(index);
            setState(() {
              _selectedIndex = index;
            });
          },
          icon: Icon(icon),

          // icon,
          color: index == _selectedIndex ? Colors.blue : Colors.grey.shade700,
        ),
      ),
    );
  }
}
