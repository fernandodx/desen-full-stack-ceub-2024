import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  void _login() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Usuário autenticado com sucesso")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 60, left: 40, right: 40),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                width: 128,
                height: 128,
                child: Image.asset("assets/logoCEUB.png"),
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(labelText: "E-mail"),
                      keyboardType: TextInputType.emailAddress,
                      validator: (email) {
                        if (email == null || email.isEmpty) {
                          return "Informe o seu e-mail";
                        }
                        if (!RegExp(
                          r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                        ).hasMatch(email)) {
                          return "Informe um e-mail válido";
                        }
                        if (email != "aluno@ceub.edu.br") {
                          return "E-mail não cadastrado";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _senhaController,
                      decoration: const InputDecoration(labelText: "Senha"),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      validator: (senha) {
                        if (senha == null || senha.isEmpty) {
                          return "Informe a sua senha";
                        }
                        if(_emailController.text == "aluno@ceub.edu.br" && senha != "12345678"){
                          return "Senha inválida";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () => _login(),
                      child: const Text("Acessar"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
