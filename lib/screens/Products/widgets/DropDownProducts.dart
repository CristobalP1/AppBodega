import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final List<String> options;
  final onChange;
  const CustomDropDown({Key? key, required this.options, this.onChange})
      : super(key: key);

  @override
  State<CustomDropDown> createState() => CustomDropDownState();
}

class CustomDropDownState extends State<CustomDropDown> {
  String dropdownValue = "";

  @override
  Widget build(BuildContext context) {
    String defaultValue = widget.options[0];
    return SizedBox(
      width: 1405,
      child: DropdownButton<String>(
        value: dropdownValue.isNotEmpty ? dropdownValue : defaultValue,
        icon: const Icon(Icons.expand_more),
        elevation: 10,
        isExpanded: true,
        style: const TextStyle(color: Colors.black54, fontSize: 20),
        underline: Container(
          height: 2,
          color: Colors.black54,
        ),
        onChanged: (String? newValue) {
          widget.onChange(newValue);
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: widget.options.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
