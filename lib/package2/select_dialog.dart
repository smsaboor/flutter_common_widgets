import 'package:flutter/material.dart';

class CustomDropDownDialog extends StatefulWidget {
  const CustomDropDownDialog(
      {Key? key,
      required this.initialValue,
      required this.valuesList,
      required this.onChanged})
      : super(key: key);
  final initialValue;
  final valuesList;
  final onChanged;

  @override
  State<CustomDropDownDialog> createState() => _CustomDropDownDialogState();
}

class _CustomDropDownDialogState extends State<CustomDropDownDialog> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.redAccent,
        primaryColorDark: Colors.red,
      ),
      child: Container(
        margin: const EdgeInsets.all(1.0),
        padding: const EdgeInsets.only(left: 5.0),
        decoration: myBoxDecoration(),
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: DropdownButton<String>(
              menuMaxHeight: MediaQuery.of(context).size.height,
              value: widget.initialValue,
              dropdownColor: Colors.white,
              focusColor: Colors.blue,
              isExpanded: true,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: widget.valuesList.map((String items) {
                return DropdownMenuItem<String>(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: widget.onChanged),
        ),
      ),
    );
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(width: 1.0, color: Colors.black26),
      borderRadius: const BorderRadius.all(
          Radius.circular(5.0) //                 <--- border radius here
          ),
    );
  }
}
