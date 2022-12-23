import 'package:flutter/material.dart';
import 'package:sleepfit/common/color.manager.dart';
import 'package:sleepfit/common/font.manager.dart';
import 'package:sleepfit/common/value.manager.dart';
import 'package:sleepfit/widgets/large.text.widget.dart';

class TopTabBarWidget extends StatefulWidget {
  const TopTabBarWidget({super.key});

  @override
  State<TopTabBarWidget> createState() => _TopTabBarWidgetState();
}

class _TopTabBarWidgetState extends State<TopTabBarWidget>
    with TickerProviderStateMixin {
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
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: TabBar(
              controller: tabController,
              labelColor: ColorManager.white,
              unselectedLabelColor: Colors.grey,
              isScrollable: false,
              indicator: const BoxDecoration(),
              indicatorSize: TabBarIndicatorSize.label,
              labelPadding: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              onTap: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              tabs: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.22,
                  decoration: BoxDecoration(
                    color: selectedIndex == 0
                        ? ColorManager.titleText
                        : ColorManager.unTabColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(AppSize.s30),
                        bottomLeft: Radius.circular(AppSize.s30)),
                  ),
                  child: Tab(
                    child: AppLargeText(
                      text: "Days",
                      size: FontSize.s16,
                      color: ColorManager.white,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.22,
                  decoration: BoxDecoration(
                    color: selectedIndex == 1
                        ? ColorManager.titleText
                        : ColorManager.unTabColor,
                  ),
                  child: Tab(
                    child: AppLargeText(
                      text: "Weeks",
                      size: FontSize.s16,
                      color: ColorManager.white,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.22,
                  decoration: BoxDecoration(
                    color: selectedIndex == 2
                        ? ColorManager.titleText
                        : ColorManager.unTabColor,
                    // border: Border.all(color: ColorManager.unTabColor),
                  ),
                  child: Tab(
                    child: AppLargeText(
                      text: "Months",
                      size: FontSize.s16,
                      color: ColorManager.white,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.22,
                  decoration: BoxDecoration(
                    color: selectedIndex == 3
                        ? ColorManager.titleText
                        : ColorManager.unTabColor,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(AppSize.s30),
                        bottomRight: Radius.circular(AppSize.s30)),
                  ),
                  child: Tab(
                    child: AppLargeText(
                      text: "All",
                      size: FontSize.s16,
                      color: ColorManager.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
