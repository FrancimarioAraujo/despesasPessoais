import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double) addTransaction;

  TransactionForm(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: "Titulo:",
              ),
            ),
            TextField(
              controller: valueController,
              decoration: InputDecoration(
                labelText: "Valor (R\$): ",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    addTransaction(titleController.text,
                        double.tryParse(valueController.text) ?? 0.0);
                  },
                  child: Text(
                    "Nova Transação",
                    style: TextStyle(
                      color: Colors.purple,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
