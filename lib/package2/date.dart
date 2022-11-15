import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

class CustomDate extends StatefulWidget {
  const CustomDate(
      {Key? key, required this.controller, required this.validator,required this.labelText})
      : super(key: key);
  final controller;
  final validator;
  final labelText;

  @override
  State<CustomDate> createState() => _CustomDateState();
}

class _CustomDateState extends State<CustomDate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.only(left: 5.0),
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          Expanded(
            child: DateTimeField(
              controller: widget.controller,
              //editable: false,
              validator: widget.validator,
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black26, width: 1.0),
                ),
                border: const OutlineInputBorder(),
                labelText: widget.labelText,
                labelStyle: const TextStyle(
                  fontSize: 14.0,
                ),
              ),
              format: DateFormat("yyyy-MM-dd"),
              onShowPicker: (context, currentValue) {
                return showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now().subtract(const Duration(days: 0)),
                  lastDate: DateTime.now().add(const Duration(days: 240)),
                );
              },
              onChanged: (dt) {
                // _endDateController.text =
                //     new DateFormat("yyyy-MM-dd").format(dt?.add(new Duration(days: 354)) ?? DateTime.now());
              },
            ),
          ),
        ],
      ),
    );
  }
}
