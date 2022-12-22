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
    return Column(
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
            tabs: [
              Container(
                decoration: BoxDecoration(
                  color: ColorManager.titleText,
                  border: Border.all(color: ColorManager.titleText),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(AppSize.s30),
                      bottomLeft: Radius.circular(AppSize.s30)),
                ),
                child: Tab(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppSize.s28, vertical: AppPadding.p12),
                    child: AppLargeText(
                      text: "Days",
                      size: FontSize.s16,
                      color: ColorManager.white,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: ColorManager.unTabColor,
                  border: Border.all(color: ColorManager.unTabColor),
                ),
                child: Tab(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p20, vertical: AppPadding.p12),
                    child: AppLargeText(
                      text: "Weeks",
                      size: FontSize.s16,
                      color: ColorManager.white,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: ColorManager.unTabColor,
                  border: Border.all(color: ColorManager.unTabColor),
                ),
                child: Tab(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p20, vertical: AppPadding.p12),
                    child: AppLargeText(
                      text: "Months",
                      size: FontSize.s16,
                      color: ColorManager.white,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: ColorManager.unTabColor,
                  border: Border.all(color: ColorManager.unTabColor),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(AppSize.s30),
                      bottomRight: Radius.circular(AppSize.s30)),
                ),
                child: Tab(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: AppPadding.p12),
                    child: AppLargeText(
                      text: "All",
                      size: FontSize.s16,
                      color: ColorManager.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
