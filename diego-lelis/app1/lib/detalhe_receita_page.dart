import 'package:app1/main.dart';
import 'package:flutter/material.dart';

import 'model/receita_model.dart';

class DetalheReceitaPage extends StatefulWidget {
  final ReceitaModel receita;

  const DetalheReceitaPage({super.key, required this.receita});

  @override
  State<DetalheReceitaPage> createState() => _DetalheReceitaPageState();
}

class _DetalheReceitaPageState extends State<DetalheReceitaPage> {
  int _medida = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.receita.nome),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              widget.receita.assetImg,
              height: 120,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    var ingrediente = widget.receita.listaIngrediente[index];
                    var qtdIngrediente =
                        ingrediente.quantidade.toInt() * _medida;
                    return ListTile(
                      leading: const Icon(
                        Icons.foggy,
                        color: Colors.red,
                      ),
                      title: Text(
                          "${qtdIngrediente} ${ingrediente.tipoMedida} - ${ingrediente.nome}"),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: widget.receita.listaIngrediente.length),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 32),
              child: Slider(
                min: 1,
                max: 10,
                divisions: 3,
                label: "${_medida} Medidas",
                activeColor: Colors.green,
                inactiveColor: Colors.grey,
                value: _medida.roundToDouble(),
                onChanged: (valor) {
                  setState(() {
                    _medida = valor.round();
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
