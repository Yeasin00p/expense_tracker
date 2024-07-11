import 'package:expense_tracker/data/data.dart';
import 'package:flutter/material.dart';

class ExpenseViewWidget extends StatelessWidget {
  const ExpenseViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: myData.length,
        itemBuilder: (context, int i) {
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 16,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: myData[i]['color'],
                                shape: BoxShape.circle,
                              ),
                            ),
                            myData[i]['icon'],
                          ],
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          myData[i]['name'],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context)
                                .colorScheme
                                .onBackground,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          myData[i]['amount'],
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context)
                                .colorScheme
                                .onBackground,
                          ),
                        ),
                        Text(
                          myData[i]['date'],
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color:
                                Theme.of(context).colorScheme.outline,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}