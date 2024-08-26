import 'package:flutter/material.dart';
import 'package:hello_world/detalhe_receita_page.dart';
import 'package:hello_world/model/receita_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ReceitaHome();
  }
}

// Stateless
class ReceitaApp extends StatelessWidget {
  const ReceitaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.grey,
    child: Center(child: Container(height:100, width: 100, color: Colors.blue,),));
  }
}

//Statefull
class ReceitaHome extends StatefulWidget {
  const ReceitaHome({super.key});

  @override
  State<ReceitaHome> createState() => _ReceitaHomeState();
}

class _ReceitaHomeState extends State<ReceitaHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receita Home',
      theme: ThemeData().copyWith(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Receita"),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Container(
              margin: EdgeInsets.only(bottom: 16),
              child: ListView.builder(
                itemCount: ReceitaModel.listaReceita.length,
                itemBuilder: (context, index) {
                  var receita = ReceitaModel.listaReceita[index];
                  return CardReceitaWidget(receita: receita);

              },),
            )
        ),
      )
    );
  }
}

class CardReceitaWidget extends StatelessWidget {
  final ReceitaModel receita;
  const CardReceitaWidget({super.key, required this.receita});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {return DetalheReceitaPage(receitaModel: receita);}));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                height: 130,
                child: ClipRRect(
                  borderRadius:
                  BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                  child: Image.asset(
                    receita.imgAsset,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  receita.nome,
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.redAccent),
                  // style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 24),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
