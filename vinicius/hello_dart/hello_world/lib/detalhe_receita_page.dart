import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'model/receita_model.dart';

class DetalheReceitaPage extends StatefulWidget {
  final ReceitaModel receitaModel;

  const DetalheReceitaPage({super.key, required this.receitaModel});

  @override
  State<DetalheReceitaPage> createState() => _DetalheReceitaPageState();
}

class _DetalheReceitaPageState extends State<DetalheReceitaPage> {

  int _medida = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.receitaModel.nome),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(widget.receitaModel.imgAsset, height: 120, width: double.maxFinite, fit: BoxFit.cover,),
            SizedBox(height: 16),
            Expanded(
              child: ListView.separated(itemBuilder: (context, index) {
                var ingrediente = widget.receitaModel.listaIngrediente[index];
                var qtdIngrediente = ingrediente.quantidade.toInt() * _medida;
                return ListTile(
                leading: Icon(Icons.adb_rounded, color: Colors.green,),
                title: Text("${qtdIngrediente} ${ingrediente.tipoMedida} | ${ingrediente.nome}")
              );},separatorBuilder: (context, intex) => Divider(color: Colors.amber,), itemCount: widget.receitaModel.listaIngrediente.length),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 32),
              child: Slider(
                min: 1,
                max: 10,
                value: _medida.roundToDouble(),
                divisions: 9,
                label: "${_medida} Medidas",
                activeColor: Colors.green,
                inactiveColor: Colors.blueGrey,
                onChanged: (valor) {
                  setState(() {
                    _medida = valor.round();
                  });
              },),
            )
          ],
        ),

      ),
    );
  }
}
