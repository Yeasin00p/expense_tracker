import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class DateTextField extends StatefulWidget {
  const DateTextField({super.key});

  @override
  State<DateTextField> createState() => _DateTextFieldState();
}

class _DateTextFieldState extends State<DateTextField> {
  TextEditingController dateController = TextEditingController();

  DateTime selectDate = DateTime.now();
  @override
  void initState() {
    dateController.text = DateFormat('dd/MM/yyyy').format(
      DateTime.now(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      readOnly: true,
      controller: dateController,
      onTap: () async {
        DateTime? newDate = await showDatePicker(
          context: context,
          initialDate: selectDate,
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(
            const Duration(days: 365),
          ),
        );
        if (newDate != null) {
          setState(() {
            dateController.text = DateFormat('dd/MM/yyyy').format(newDate);
            selectDate = newDate;
          });
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: const Icon(
          FontAwesomeIcons.calendar,
          size: 16,
          color: Colors.grey,
        ),
        hintText: 'Date',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
