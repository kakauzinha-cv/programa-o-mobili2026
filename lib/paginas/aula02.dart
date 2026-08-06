import 'package:flutter/material.dart';

class Aula02 extends StatelessWidget {
  const Aula02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aula 02 - Rowns e Colimns"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
    const SizedBox(
       height: 20,
        child: Text("Start (Padrão)"),
            )
       Container(
        decoration: BoxDecoration(border: Border.all(color: colors.red),),
       )
          ],
        )
      ),
    );
  }
}
