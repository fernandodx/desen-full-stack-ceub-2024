import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  final String title;

  const Login({super.key, required this.title});

  @override
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 500,
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(height: 24,),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Email',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Porfavor, insira seu e-mail';
                    }
                    if (value != 'aluno@ceub.edu.br') {
                      return 'E-mail ou senha invalido';
                    }
                    return null;
                    return null;
                  },
                ),
                SizedBox(height: 16,),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Senha',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira sua senha';
                    }
                    if (value != '12345678') {
                      return 'E-mail ou senha invalido';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16,),
                ElevatedButton(

                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Sucesso!')),
                      );
                    }
                  },
                  child: const Text('Logar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}