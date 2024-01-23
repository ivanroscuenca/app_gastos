import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction(this.addTx);
//Controllers

  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(labelText: 'Title'),
                controller: titleController,
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Amount'),
                controller: amountController,
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  addTx(titleController.text,
                      double.parse(amountController.text));
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                    textStyle: MaterialStatePropertyAll(
                        TextStyle(color: Colors.white))),
                child: const Text('Add transaction'),
              ),
            ]),
      ),
    );
  }
}
