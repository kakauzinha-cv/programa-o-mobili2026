import 'package:flutter/material.dart';

class Aula01 extends StatelessWidget {
  const Aula01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("01 - Container"),
      ),
      //o center centraliza o nosso conteudo
      body: Center(
        //culumn coloca vários elementos como filhos 
        //organiza os elementos na vertical 
        child: Column(
          children: [
            //containeer com largura e altura
            Center(
              child: Container(
                width: double. infinity, // Retorna o valor total disponivel
                height: 100,
                color: Colors.purple, 
                child: Center(child: Text("primeiro container")),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.all(16)
              color:Colors.amber,
              child: const Center(
                child: Text(
                  "Segundo container",
                  style: TextStyle(color: colors.whites),
                )
              )
              ,)
          ],
        ),
      ),
    );
  }
}
