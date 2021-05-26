import 'package:despesaspessoais/components/transaction_form.dart';
import 'package:despesaspessoais/components/transaction_list.dart';
import 'package:despesaspessoais/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
        id: "t1",
        title: "Novo Tênis de Corrida",
        date: DateTime.now(),
        value: 310),
    Transaction(
        id: "t2", title: "Conta de Luz", date: DateTime.now(), value: 211),
    Transaction(
        id: "t3", title: "Computador", date: DateTime.now(), value: 1000),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(
          transactions: _transactions,
        ),
        TransactionForm(),
      ],
    );
  }
}
