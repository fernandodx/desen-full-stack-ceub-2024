import 'package:flutter/material.dart';
import 'package:segundo_app_flutter/components/color_button.dart';
import 'package:segundo_app_flutter/components/theme_button.dart';

import 'package:segundo_app_flutter/models/color_selection.dart';
import 'package:segundo_app_flutter/pages/explorer_page.dart';

class Home extends StatefulWidget {

  final ColorSelection colorSelection;
  final void Function(bool useLightMode) changeTheme;
  final void Function(int value) changeColor;
  final String title;


  Home({required this.colorSelection, required this.changeTheme, required this.changeColor, required this.title, super.key,});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tab = 0;

  // Barra de navegação com botões Home, Pedidos e Conta
  List<NavigationDestination> appDestination = const[
    NavigationDestination(icon: Icon(Icons.home_outlined), label: "Home", selectedIcon: Icon(Icons.home_filled),),
    NavigationDestination(icon: Icon(Icons.list_alt), label: "Pedidos", selectedIcon: Icon(Icons.list_alt),),
    NavigationDestination(icon: Icon(Icons.person_outlined), label: "Conta", selectedIcon: Icon(Icons.person_sharp),),
  ];


  @override
  Widget build(BuildContext context) {

    final pages = [
      //ExplorerPage
      const ExplorerPage(), // Carrossel de restaurantes
      Center(
        child: Text("Pedidos", style: Theme.of(context).textTheme.headlineLarge),
      ),
      Center(
        child: Text("Conta", style: Theme.of(context).textTheme.headlineLarge),
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 4,
        backgroundColor: Theme.of(context).colorScheme.surface,
        actions: [
          ColorButton(
            changeColor: (color) => widget.changeColor.call(color),
            colorSelection: widget.colorSelection
          ),
          ThemeButton(
              changeTheme: widget.changeTheme
          )
        ],
      ),
      body: IndexedStack(
        index: tab,
        children: pages,
      ),
      bottomNavigationBar: NavigationBar(
        destinations: appDestination,
        selectedIndex: tab,
        onDestinationSelected: (indexSelected){
          setState(() {
            tab = indexSelected;
          });
        },
      ),
    );
  }
}
