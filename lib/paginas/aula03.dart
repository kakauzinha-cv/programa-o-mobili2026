import 'package:flutter/material.dart';

class Aula03 extends StatelessWidget {
  const Aula03({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _criarInfo({
      required IconData icone,
      required String titulo,
      required String texto,
    }) {
      return Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.indigo.shade50,
          borderRadius: BorderRadius.circular(50),
        ), // BoxDecoration
        child: Column(
          children: [
            Icon(icone, size: 40, color: Colors.indigo),
            const SizedBox(height: 10),
            Text(
              texto,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Título"),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu Perfil"),
        // Centraliza o título da AppBar
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // Adiciona um padding em torno do conteúdo da tela
        padding: EdgeInsets.all(20),
        // Precisamos do container para aplicar alinhamento de forma correta
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            // Alinhando ao centro
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Cria um avatar circular
              const CircleAvatar(
                radius: 65,
                backgroundColor: Colors.indigo,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 70,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Leonardo Roberto",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Professor",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 30),

              Row(
                children: [
                  // cada Expanded ocupa o mesmo espaço disponivel na linha
                  Expanded(
                    child: _criarInfo(
                        icone: Icons.school, titulo: "turmas", texto: "5"),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: _criarInfo(
                        icone: Icons.code, titulo: "projetos", texto: "12"),
                  ),
                  SizedBox(width: 15),

                  Expanded(
                      child: _criarInfo(
                          icone: Icons.star, titulo: "turmas", texto: "10")),
                  SizedBox(width: 15),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                "sobre Min",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
             const SizedBox(height: 10),
             const Text("gosto de viajar",
             textAlign: TextAlign.justify,
            ],
          ),
        ),
      ),
    );
  }
}
