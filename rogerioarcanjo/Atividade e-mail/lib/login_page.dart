import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      final email = _emailController.text;
      final password = _passwordController.text;

      if (email == 'aluno@ceub.edu.br' && password == '12345678') {
        Fluttertoast.showToast(
          msg: "Login bem-sucedido!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
        );
      } else {
        Fluttertoast.showToast(
          msg: "E-mail ou senha inválidos.",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "ATIVIDADE 1",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(27),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.pinkAccent,
            ],
          ),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const Text(
                "Digite os dados de acesso nos campos abaixo.",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              CupertinoTextField(
                controller: _emailController,
                cursorColor: Colors.pinkAccent,
                padding: const EdgeInsets.all(15),
                placeholder: "Digite o seu e-mail",
                placeholderStyle: const TextStyle(color: Colors.white70, fontSize: 14),
                style: const TextStyle(color: Colors.white, fontSize: 14),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(7),
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              const SizedBox(height: 5),
              CupertinoTextField(
                controller: _passwordController,
                padding: const EdgeInsets.all(15),
                cursorColor: Colors.pinkAccent,
                placeholder: "Digite sua senha",
                obscureText: true,
                placeholderStyle: const TextStyle(color: Colors.white70, fontSize: 14),
                style: const TextStyle(color: Colors.white, fontSize: 14),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: CupertinoButton(
                  padding: const EdgeInsets.all(17),
                  color: Colors.greenAccent,
                  child: const Text(
                    "Acessar",
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  onPressed: _submitForm,
                ),
              ),
              const SizedBox(height: 7),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white70, width: 0.8),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: CupertinoButton(
                  child: const Text(
                    "Crie sua conta",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  onPressed: () {
                    // Navegação ou lógica para criação de conta
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
