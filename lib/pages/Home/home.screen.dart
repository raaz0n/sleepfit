import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import '../../common/color.manager.dart';
import '../../common/value.manager.dart';
import '../../widgets/default.button.dart';
import '../../widgets/small.text.widget.dart';
import 'widget/music.widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime dateTime = DateTime.now();

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          const MusicWidget(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.20,
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
                          ? Center(
                              child: SizedBox(
                                height: AppSize.s100,
                                width: AppSize.s200,
                                child: CupertinoDatePicker(
                                  initialDateTime: dateTime,
                                  mode: CupertinoDatePickerMode.time,
                                  // use24hFormat: true,
                                  onDateTimeChanged: (time) =>
                                      setState(() => dateTime = time),
                                ),
                              ),
                            )
                          : const SizedBox(
                              height: AppSize.s83,
                            ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      _selectedIndex == 0
                          ? AppSmallText(
                              text: "Wake up easy between \n12:00 - 12:30 AM",
                              color: ColorManager.subTitle,
                            )
                          : _selectedIndex == 1
                              ? AppSmallText(
                                  text:
                                      "No wakeup window. \nAlarm will go off ay 12:30 AM",
                                  color: ColorManager.subTitle,
                                )
                              : AppSmallText(
                                  text: "No alarm \nOnly sleep analyzed",
                                  color: ColorManager.subTitle,
                                ),
                      const SizedBox(
                        height: AppSize.s14,
                      ),
                      DefaultButton(
                        press: () {
                          final value = DateFormat('HH:mm').format(dateTime);
                          log(value.toString());
                        },
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.045,
          ),
        ],
      ),
    );
  }
}
