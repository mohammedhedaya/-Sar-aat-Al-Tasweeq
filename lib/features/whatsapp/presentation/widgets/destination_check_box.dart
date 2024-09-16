import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseDestinationCheckbox extends StatefulWidget {
  const ChooseDestinationCheckbox({super.key});

  @override
  State<ChooseDestinationCheckbox> createState() =>
      _ChooseDestinationCheckboxState();
}

class _ChooseDestinationCheckboxState extends State<ChooseDestinationCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _isChecked,
      onChanged: (bool? value) {
        setState(() {
          _isChecked = value!;
        });
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2.r),
      ),
      activeColor: const Color(0xff00C0CC),
      checkColor: const Color(0xff00C0CC),
      visualDensity: VisualDensity.compact,
      side: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
