import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:sleepfit/common/color.manager.dart';
import 'package:sleepfit/common/value.manager.dart';
import 'package:sleepfit/pages/Home/widget/music.widget.dart';
import 'package:sleepfit/widgets/default.button.dart';
import 'package:sleepfit/widgets/small.text.widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime _dateTime = DateTime.now();

  late PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const MusicWidget(),
          const SizedBox(
            height: 310,
          ),
          Expanded(
            flex: 1,
            child: PageView.builder(
              itemCount: 3,
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              itemBuilder: ((context, index) => Column(
                    children: [
                      _selectedIndex != 2
                          ? Container(
                              width: AppSize.s210,
                              height: AppSize.s50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: ColorManager.titleText)),
                              child: TimePickerSpinner(
                                is24HourMode: false,
                                normalTextStyle: TextStyle(
                                    fontSize: 24,
                                    color: ColorManager.titleText),
                                highlightedTextStyle: TextStyle(
                                    fontSize: 24, color: ColorManager.subTitle),
                                spacing: 30,
                                itemHeight: 50,
                                isForce2Digits: true,
                                onTimeChange: (time) {
                                  setState(() {
                                    _dateTime = time;
                                  });
                                },
                              ),
                            )
                          : const SizedBox(
                              height: AppSize.s83,
                            ),
                      const SizedBox(
                        height: AppSize.s50,
                      ),
                      _selectedIndex != 1
                          ? AppSmallText(
                              text: "Wake up easy between \n12:00 - 12:30 AM",
                              color: ColorManager.subTitle,
                            )
                          : AppSmallText(
                              text:
                                  "No wakeup window. \nAlarm will go off ay 12:30 AM",
                              color: ColorManager.subTitle,
                            ),
                      const SizedBox(
                        height: AppSize.s14,
                      ),
                      const DefaultButton(
                        text: "Start",
                        height: AppSize.s60,
                        width: AppSize.s165,
                      )
                    ],
                  )),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (var i = 0; i < 3; i++)
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 480),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: _selectedIndex == i
                          ? const Color(0xff5D5FEF)
                          : const Color(0xffECE8FD),
                    ),
                    width: AppSize.s8,
                    height: AppSize.s8,
                  ),
                )
            ],
          ),
          const SizedBox(
            height: AppSize.s45,
          ),
        ],
      ),
    ));
  }
}
