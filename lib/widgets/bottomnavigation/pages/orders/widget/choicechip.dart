// ignore_for_file: library_private_types_in_public_api, avoid_function_literals_in_foreach_calls, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ChoiceChipWidget extends StatefulWidget {
  final List chipName;
  const ChoiceChipWidget({Key? key, required this.chipName}) : super(key: key);

  @override
  _ChoiceChipWidgetState createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  String _isSelected = "";

  func() {
    List<Widget> choices = [];
    widget.chipName.forEach((item) {
      choices.add(Container(
        child: ChoiceChip(
          label: Text(
            item,
            style: const TextStyle(color: Colors.black, fontSize: 12),
          ),
          labelStyle: const TextStyle(color: Colors.white),
          selectedColor: const Color.fromARGB(255, 222, 192, 202),
          selected: _isSelected == item,
          onSelected: (selected) {
            setState(() {
              _isSelected = item;
            });
          },
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5.0,
      runSpacing: 3.0,
      children: func(),
    );
  }
}
