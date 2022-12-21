import 'package:flutter/material.dart';
import 'package:sleepfit/common/color.manager.dart';
import 'package:sleepfit/common/font.manager.dart';
import 'package:sleepfit/common/string.manager.dart';
import 'package:sleepfit/common/value.manager.dart';
import 'package:sleepfit/widgets/large.text.widget.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
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
    tabController = TabController(length: 3, vsync: this);
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
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            indicator: const BoxDecoration(),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Container(
                decoration: BoxDecoration(
                  color: ColorManager.titleText,
                  border: Border.all(color: ColorManager.titleText),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Tab(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p20, vertical: AppPadding.p12),
                    child: AppLargeText(
                      text: "All",
                      size: 16,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: ColorManager.titleText),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Tab(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p20, vertical: AppPadding.p12),
                    child: AppLargeText(
                      text: "Meditation Music",
                      size: 16,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  // color: ColorManager.titleText,
                  border: Border.all(color: ColorManager.titleText),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Tab(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p20, vertical: AppPadding.p12),
                    child: AppLargeText(
                      text: "Spatial Audoo",
                      size: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: AppSize.s18,
        ),
        AppLargeText(text: "Recently played"),
        const SizedBox(
          height: AppSize.s18,
        ),
        SizedBox(
          height: 260,
          child: ListView.separated(
              physics: const ScrollPhysics(),
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: AppSize.s28,
                );
              },
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      height: AppSize.s60,
                      width: AppSize.s83,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSize.s14),
                        image: const DecorationImage(
                            image: AssetImage(
                              "assets/image/music_backgound.jpeg",
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(
                          text: AppStrings.musicName,
                          color: ColorManager.titleText,
                          size: FontSize.s16,
                        ),
                        const SizedBox(
                          width: AppSize.s285,
                          child: Text(
                              "A single lead from a cello, performed on the deep sleep music."),
                        )
                      ],
                    )
                  ],
                );
              }),
        ),
      ],
    );
  }
}
