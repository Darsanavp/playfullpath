import 'package:flutter/material.dart';

class CustomRadioGroup extends StatefulWidget {
  final List<String> options;
  final ValueChanged<int>? onChanged;

  CustomRadioGroup({required this.options, this.onChanged});

  @override
  _CustomRadioGroupState createState() => _CustomRadioGroupState();
}

class _CustomRadioGroupState extends State<CustomRadioGroup> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        children: List.generate(
          widget.options.length,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
                widget.onChanged?.call(index);
                
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: _selectedIndex == index ? Colors.blue : Colors.transparent,
                    width: 2.0,
                  ),
                ),
                child: ClipOval(
                  child: Image.network(
                    widget.options[index],
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
