import 'package:expense_tracker/screen/home/add_expences/views/widget/category_text_field_widget.dart';
import 'package:expense_tracker/screen/home/add_expences/views/widget/date_text_field_widget.dart';
import 'package:expense_tracker/screen/home/add_expences/views/widget/text_button_widget.dart';
import 'package:expense_tracker/screen/home/add_expences/views/widget/text_from_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  TextEditingController expenseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                'Add Expense',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextFromFieldWidget(
                  controller: expenseController,
                  iconData: FontAwesomeIcons.dollarSign,
                  borderRadius: 30,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const CategoryTextField(),
              const SizedBox(
                height: 16,
              ),
              const DateTextField(),
              const SizedBox(
                height: 32,
              ),
              TextButtonWidget(
                onTap: () {},
                text: 'Save',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
