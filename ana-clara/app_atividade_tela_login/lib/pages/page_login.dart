import 'package:flutter/material.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

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
              child: Image.asset("assets/login-temp.jpg"),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: "E-mail:"
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (email) {
                        if (email == null || email.isEmpty){
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
                      decoration: const InputDecoration(
                          labelText: "Senha:"
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      validator: (senha) {
                        if(senha == null || senha.isEmpty){
                          "Informe a sua senha";
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
                    ElevatedButton(onPressed: () {
                      if(_formKey.currentState!.validate()){
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Usuário autenticado!"))
                        );
                      }
                    }, child: const Text("Logar"))
                  ],
            ))
          ],
        )),
      ),
    );
  }
}
