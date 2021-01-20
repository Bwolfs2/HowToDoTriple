import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:task_clean_app/app/shared/widgets/custom_line_datepicker/custom_line_date_picker_controller.dart';

class CustomLineDataPickerWidget extends StatefulWidget {
  final DateTime? initialValue;
  final void Function(DateTime date)? onChangeDate;
  final String label;
  final BuildContext context;

  const CustomLineDataPickerWidget(
    this.context, {
    Key? key,
    required this.label,
    this.initialValue,
    required this.onChangeDate,
  }) : super(key: key);

  @override
  _CustomLineDataPickerWidgetState createState() =>
      _CustomLineDataPickerWidgetState();
}

class _CustomLineDataPickerWidgetState
    extends State<CustomLineDataPickerWidget> {
  var controller = CustomLineDatePickerController();

  @override
  void initState() {
    super.initState();
    if (widget.initialValue != null) {
      controller.setValue(widget.initialValue);
    }
  }

  @override
  Widget build(BuildContext _) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      title: RxBuilder(
        builder: (_) => Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.label,
              style:
                  TextStyle(color: Theme.of(context).accentColor, fontSize: 12),
            ),
            Row(
              children: [
                Expanded(child: Text(controller.seletedDate.value)),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.calendar_today),
              ],
            ),
          ],
        ),
      ),
      onTap: () async {
        var selectedDate = await showDatePicker(
          context: widget.context,
          initialDate: widget.initialValue ?? DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime(2080),
        );

        var time = await showTimePicker(
          context: widget.context,
          initialTime: widget.initialValue != null
              ? TimeOfDay.fromDateTime(widget.initialValue!)
              : TimeOfDay.now(),
        );
        if (selectedDate != null && time != null) {
          var fullDate = DateTime(
            selectedDate.year,
            selectedDate.month,
            selectedDate.day,
            time.hour,
            time.minute,
          );
          controller.setValue(fullDate);
          widget.onChangeDate?.call(fullDate);
        }
      },
    );
  }
}
