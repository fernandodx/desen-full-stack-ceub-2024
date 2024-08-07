import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FormularioApp();
  }
}

class FormularioApp extends StatelessWidget {
  const FormularioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: const Text('Formulário')),
          body: const Formulario(),
        ));
  }
}

class Usuario {
  String email;
  String senha;

  Usuario({required this.email, required this.senha});
}

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  Usuario usuario = Usuario(email: '', senha: '');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration:
              const InputDecoration(hintText: 'Entre com o seu email'),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, digite um email';
                }
                String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
                RegExp regex = RegExp(pattern);
                if(!regex.hasMatch(value)) {
                  return 'Por favor, insira um email válido';
                }
                return null;
              },
              onSaved: (String? value) {
                usuario.email = value!;
              },
            ),
            TextFormField(
              obscureText: _obscureText,
              decoration:
              InputDecoration(
                  hintText: 'Entre com a sua senha',
                  suffixIcon: IconButton(icon: Icon( _obscureText ? Icons.visibility : Icons.visibility_off), onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },)),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, digite uma senha';
                }
                return null;
              },
              onSaved: (String? value) {
                usuario.senha = value!;
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    String email = 'aluno@ceub.edu.br';
                    String senha = '12345678';

                    if (usuario.email == email && usuario.senha == senha) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Login efetuado!')));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Usuario ou senha inválidos')));
                    }
                  }
                },
                child: const Text('Enviar'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
