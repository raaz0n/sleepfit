import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';

import '../../../common/color.manager.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  final DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DatePicker(
            DateTime.now(),
            width: 60,
            height: 80,
            controller: _controller,
            initialSelectedDate: DateTime.now(),
            selectionColor: ColorManager.titleText,
            selectedTextColor: Colors.white,
            onDateChange: (date) {
              setState(
                () {
                  _selectedValue = date;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
