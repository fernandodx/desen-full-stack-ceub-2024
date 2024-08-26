import 'package:atividade2_sala/componentes/color_button.dart';
import 'package:atividade2_sala/componentes/theme_button.dart';
import 'package:atividade2_sala/models/models/color_selection.dart';
import 'package:atividade2_sala/pages/explorer_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final ColorSelection colorSelection;
  final void Function(bool useLigthMode) changeTheme;
  final void Function(int value) changeColor;
  final String title;

  const Home({super.key,
    required this.changeTheme,
    required this.changeColor,
    required this.title,
    required this.colorSelection});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tab = 0;
  List<NavigationDestination> appDestination = const [
    NavigationDestination(
      icon: Icon(Icons.home_outlined),
      label: 'Home',
      selectedIcon: Icon(Icons.home),
    ),
    NavigationDestination(
      icon: Icon(Icons.list_alt_outlined),
      label: 'Pedidos',
      selectedIcon: Icon(Icons.list),
    ),
    NavigationDestination(
      icon: Icon(Icons.person_outlined),
      label: 'Conta',
      selectedIcon: Icon(Icons.person),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final pages = [
      ExplorePage(),
      //Explore pages
      Center(
        child: Text(
          'PEDIDOS',
          style: Theme
              .of(context)
              .textTheme
              .headlineLarge,
        ),
      ),
      Center(
        child: Text(
          'CONTA',
          style: Theme
              .of(context)
              .textTheme
              .headlineLarge,
        ),
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 4,
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .surface,
        actions: [
          ColorButton(
              changeColor: (color) => widget.changeColor.call(color),
              colorSelection: widget.colorSelection),
          ThemeButton(changeTheme: widget.changeTheme),
        ],
      ),
      body: IndexedStack(
        index: tab,
        children: pages,
      ),
      bottomNavigationBar: NavigationBar(
        destinations: appDestination,
        selectedIndex: tab,
        onDestinationSelected: (indexSelected) {
          setState(() {
            tab = indexSelected;
          });
        },
      ),
    );
  }
}
