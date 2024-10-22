import 'package:flutter/material.dart';
import '../utils/my_tab.dart';

//Importar 5 tabs
import '../tab/burger_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/pancakes_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    //Donut tab
    const MyTab(
      iconPath: "lib/icons/donut.png",
    ),

    //Donut tab
    const MyTab(
      iconPath: "lib/icons/burger.png",
    ),

    //smoothie tab
    const MyTab(
      iconPath: "lib/icons/smoothie.png",
    ),

    //pancake tab
    const MyTab(
      iconPath: "lib/icons/pancakes.png",
    ),

    //pizza tab
    const MyTab(
      iconPath: "lib/icons/pizza.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Icon(
              Icons.menu,
              color: Colors.grey[800],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(Icons.person),
            )
          ], //Crea un area de gestion de cuentas
        ),
        body: Column(
          children: [
            //text "I want to eat"
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Text(
                    "I want To ",
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    "Eat",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),

            //Tap bar
            TabBar(tabs: myTabs),

            //Tab bar view
            Expanded(
                child: TabBarView(children: [
              DonutTab(),
              const BurgerTab(),
              const SmoothieTab(),
              const PizzaTab(),
              const PancakesTab()
            ]))

            //Total del carrito
          ],
        ),
      ),
    );
  }
}
