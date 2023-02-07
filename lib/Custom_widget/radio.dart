import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  final List<String> options;
  final String selectedOption;
  final Function(String) onChanged;

  CustomRadioButton({
    required this.options,
    required this.selectedOption,
    required this.onChanged,
  });

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  late String _selectedOption;

  @override
  void initState() {
    super.initState();
    _selectedOption = widget.selectedOption;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.options.map((option) {
        return Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              child: _selectedOption == option
                  ? Center(
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                      ),
                    )
                  : Container(),
            ),
            SizedBox(width: 10),
            Text(
              option,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(width: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedOption = option;
                });
                widget.onChanged(option);
              },
            ),
          ],
        );
      }).toList(),
    );
  }
}
