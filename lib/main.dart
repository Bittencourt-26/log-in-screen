import 'package:flutter/material.dart';

class Teste extends StatefulWidget {
  const Teste({super.key});
  @override
  State<Teste> createState() => _TesteState();
}

void main(List<String> args) {
  runApp(const Teste());
}

class _TesteState extends State<Teste> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  String valorDoInputEmail = '';
  String valorDoInputSenha = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 38, 50, 56),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //parte do e-mail
                height: 50,
                width: 350,

                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'Enter e-mail',
                    hintText: 'Enter your e-mail',
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      borderSide: BorderSide(
                        color: Colors
                            .white, // Cor da borda quando não está em foco
                        width: 2.0, // Largura da borda
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white, // Cor da borda quando está em foco
                        width: 2.0, // Largura da borda
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 7),
              Container(
                //parte da senha
                height: 50,
                width: 350,
                child: TextField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  controller: passWordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your Password',
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      borderSide: BorderSide(
                        color: Colors
                            .white, // Cor da borda quando não está em foco
                        width: 2.0, // Largura da borda
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white, // Cor da borda quando está em foco
                        width: 2.0, // Largura da borda
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 13),
              Container(
                height: 43,
                width: 100,
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                  color: Colors.white,
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 38, 50, 56)),
                  ),
                  onPressed: () {
                    valorDoInputEmail = emailController.text;
                    emailController.clear();
                    valorDoInputSenha = passWordController.text;
                    passWordController.clear();
                  },
                  child: const Expanded(
                    child: Center(
                      child: Text(
                        'Sign in',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
