import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final void Function(bool useLightMode) changeTheme;
  final void Function(int value) changeColor;
  final String title;

  Home({required this.changeTheme, required this.changeColor, required this.title, super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<NavigationDestination> appDestinations = const [
    NavigationDestination(
      icon: Icon(Icons.home_outlined),
      label: "Home",
      selectedIcon: Icon(Icons.home),
    ),
    NavigationDestination(
      icon: Icon(Icons.list_outlined),
      label: "Pedidos",
      selectedIcon: Icon(Icons.list),
    ),
    NavigationDestination(
      icon: Icon(Icons.person_outlined),
      label: "Conta",
      selectedIcon: Icon(Icons.person),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 4,
        backgroundColor: Theme.of(context).colorScheme.surface,
        actions: [
          //ColorButton
          //ThemeButton
        ],
      ),
      body: IndexedStack(),
      bottomNavigationBar: NavigationBar(destinations: appDestinations),
    );
  }
}