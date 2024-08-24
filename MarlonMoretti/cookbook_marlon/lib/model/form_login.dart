import 'package:cookbook_marlon/controller/conexao.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {

  FormLogin({super.key});

  @override
  FormLoginState createState() {
    return FormLoginState();
  }
}

class FormLoginState extends State<FormLogin> {

  final _formKey = GlobalKey<FormState>();
  String login = "";
  String senha = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Cookbook"),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Login',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Insira o e-mail de login para continuar.';
                      }else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return 'Por favor, insira um e-mail válido';
                      }else{
                        //Validacao validacao = new Validacao();
                        //validacao.login = value.toString();
                        login = value.toString();
                        return null;
                      }
                    },
                  ),
                ),
              ),

              // Senha
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Insira a senha de login para continuar.';
                      }else{
                        //Validacao validacao = new Validacao();
                        //validacao.senha = value.toString();
                        senha = value.toString();
                        return null;
                      }
                    },
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    MockBancoDeDados dados = new MockBancoDeDados();
                    if(login == dados.login.toString()){
                      if(senha == dados.senha.toString()){
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Sucesso! Login e Senha certos!')),
                        );
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Senha incorreta.')),
                        );
                      }
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Login incorreto.')),
                      );
                    }
                  }
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.deepPurple, // Cor do texto
                  shadowColor: Colors.grey, // Cor da sombra
                  elevation: 5, // Elevação do botão
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0), // Bordas arredondadas
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Padding do botão
                ),
                child: const Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}