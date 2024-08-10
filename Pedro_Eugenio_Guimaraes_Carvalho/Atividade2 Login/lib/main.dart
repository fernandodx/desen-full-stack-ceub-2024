import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

void main() {
  runApp(MyApp());
}

//Aplicativo a ser rodado
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Entrar',
      home: Tela(),
    );
  }
}

// Tela que cria um estado
class Tela extends StatefulWidget {
  @override
  Estado createState() => Estado();
}

//Classe estado
class Estado extends State<Tela> {
  var formKey = GlobalKey<FormState>();
  var controladorEmail = TextEditingController();
  var controladorSenha = TextEditingController();

  @override
  void dispose() {
    controladorEmail.dispose();
    super.dispose();
  }

  void Entrar() {
    if (formKey.currentState!.validate()) {
      String email = controladorEmail.text;
      String senha = controladorSenha.text;
      if (email != 'aluno@ceub.edu.br' || senha != '12345678') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Conjunto de E-mail e Senha não encontrado!')),
        
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('SUCESSO! SEJA BEM VINDO!')),
        );
      }
    }
  }
  //Decorações e embelezamento do app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 103, 156, 114),
        centerTitle: true,

      ),
      body: Padding(
        padding:  EdgeInsets.all(24.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: EmailFieldWidget(controller: controladorEmail),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: controladorSenha,
                  decoration: InputDecoration(
                    labelText: 'Digite sua senha',
                    prefixIcon: Icon(Icons.key),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Insira sua senha';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: Entrar,
                child: Text(
                    'Entrar',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Campo de email com simbolo e validação
class _EmailFieldWidgetState extends State<EmailFieldWidget> {
  @override
  Widget build(BuildContext context) => TextFormField(
  controller: widget.controller,
  decoration: InputDecoration(
    hintText: 'Digite seu E-mail',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20)
    ),
    prefixIcon: Icon(Icons.email),
  ),
  keyboardType: TextInputType.emailAddress,
    validator: (email) => email != null && !EmailValidator.validate(email)? 'Digite um email válido':null,
  );
}



class EmailFieldWidget extends StatefulWidget{
  final TextEditingController controller;

  const EmailFieldWidget({
    Key? key,
    required this.controller,
}) : super(key:key);

  @override
  _EmailFieldWidgetState createState() => _EmailFieldWidgetState();
}

