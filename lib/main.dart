import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tab Bar View",
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("flutter"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.abc_sharp),
                ),
                Tab(
                  icon: Icon(Icons.abc_sharp),
                ),
                Tab(
                  icon: Icon(Icons.abc_sharp),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.amber, // Define los colores del gradiente
                      Colors.white, // Puedes agregar más colores si deseas
                    ],
                  ),
                ),
                child: Center(
                    child: Container(
                     
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                      
                            borderRadius: BorderRadius.circular(10.1),
                          
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 7,
                                  offset: Offset(0, 3))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '{$numeros}',
                            textAlign: TextAlign.center,
                          ),
                        ))),
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Text('pagina2'),
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.deepPurpleAccent),
                child: const Center(child: Text('pagina3')),
              ),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 20),
              FloatingActionButton(
                onPressed: () {
                  print("$numeros");
                  setState(() {
                    agregar();
                  });
                },
                child: const Icon(Icons.delete),
              ),
            ],
          ),
        ),
      ),
    );
  }

//lisra de numeros
  List<int> numeros = [5];
  void agregar() {
    numeros.add(5);
  }
}
