import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Página loging',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Container(
              alignment: Alignment.center, child: Text('Login e senha')),
        ),
        body: ListView(
          children: [FormLogin()],
        ),
      ),
    );
  }
}

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerSenha = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 300,
            child: TextFormField(
              controller: _controllerEmail,
              decoration: InputDecoration(
                  labelText: 'Email',
                  icon: Icon(
                    Icons.email,
                    color: Colors.blue,
                  )),
              validator: (String? value) {
                String pattern = r'^[^@]+@[^@]+\.[^@]+$';
                RegExp regex = RegExp(pattern);
                if (value == null || value.isEmpty) {
                  return 'Insira o email';
                } else if (!regex.hasMatch(value)) {
                  return 'Digite um email válido';
                } else {
                  return null;
                }
              },
            ),
          ),
          SizedBox(
            width: 300,
            child: TextFormField(
              controller: _controllerSenha,
              obscureText: _obscureText,
              decoration: InputDecoration(
                  labelText: 'Senha',
                  icon: Icon(
                    Icons.lock,
                    color: Colors.blue,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  )),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Insira a senha';
                } else {
                  return null;
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
                onPressed: () => _mostrarToast(),
                child: const Text(
                  'Enviar',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
          )
        ],
      ),
    );
  }

  void _mostrarToast() {
    if (_formKey.currentState!.validate()) {
      String inputTextEmail = _controllerEmail.text;
      String inputTextSenha = _controllerSenha.text;
      if (inputTextEmail == 'aluno@ceub.edu.br' &&
          inputTextSenha == '12345678') {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Login feito com sucesso',
                  style: TextStyle(color: Colors.white)),
              backgroundColor:Colors.green,)
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text(
                'Login ou senha incorreta',
                  style: TextStyle(color: Colors.white)),
            backgroundColor:Colors.redAccent,)
        );
      }

      //showDialog(
      //context: context,
      //builder: (BuildContext context) {
      //return AlertDialog(
      //title: Text('Voce digitou: '),
      //content: Text(inputTextEmail),
      //actions: [
      //      TextButton(
      //        child: Text('OK'),
      //        onPressed: () => Navigator.of(context).pop(),
      //        )
      //      ],
      //    );
      //},
      //);
    }
  }
}
