import 'package:app2/components/color_button.dart';
import 'package:app2/components/theme_button.dart';
import 'package:app2/models/color_selection.dart';
import 'package:app2/pages/explore_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final ColorSelection colorSelection;
  final void Function(bool useLightMode) changeTheme;
  final void Function(int value) changeColor;
  final String title;

  const Home(
      {super.key,
      required this.changeTheme,
      required this.changeColor,
      required this.title,
      required this.colorSelection});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tab = 0;
  List<NavigationDestination> appDestinations = const [
    NavigationDestination(
        icon: Icon(Icons.home_outlined),
        label: "Home",
        selectedIcon: Icon(Icons.home)),
    NavigationDestination(
        icon: Icon(Icons.list_alt_outlined),
        label: "Pedidos",
        selectedIcon: Icon(Icons.list_alt)),
    NavigationDestination(
        icon: Icon(Icons.person_2_outlined),
        label: "Conta",
        selectedIcon: Icon(Icons.person_2))
  ];

  @override
  Widget build(BuildContext context) {
    final pages = [
      const ExplorePage(),
      /*
      Center(
        child: Text(
          "Home",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      Center(
        child: Text(
          "Pedidos",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      Center(
        child: Text(
          "Conta",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      )
      */
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        elevation: 4,
        backgroundColor: Theme.of(context).colorScheme.surface,
        actions: [
          ThemeButton(changeTheme: widget.changeTheme),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: ColorButton(
                changeColor: (color) => widget.changeColor.call(color),
                colorSelection: widget.colorSelection),
          ),
        ],
      ),
      body: IndexedStack(
        index: tab,
        children: pages,
      ),
      bottomNavigationBar: NavigationBar(
        destinations: appDestinations,
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
