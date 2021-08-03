import 'package:flutter/material.dart';
import 'package:myfinancy/view/rendas.dart';
import 'package:myfinancy/view/despesas.dart';
import 'package:myfinancy/view/relatorios.dart';
import 'package:myfinancy/view/logout.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Properties

  int currentTab = 0;
  final List<Widget> screens = [
    Despesas(),
    Rendas(),
    Relatorio(),
    Logout(),
  ];

  // Active Page ( Tab )
  Widget currentScreen = Despesas(); // initial screen in viewport

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      //FAB Buttom

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.orangeAccent,
        onPressed: () {},
      ),

      //FAB Position
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //Botoes App Bar
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 65,
                      onPressed: () {
                        setState(() {
                          currentScreen = Despesas();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.money_off,
                            color: currentTab == 0 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'Despesas',
                            style: TextStyle(
                              color:
                                  currentTab == 0 ? Colors.blue : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Rendas();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.attach_money,
                            color: currentTab == 1 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'Rendas',
                            style: TextStyle(
                              color:
                                  currentTab == 1 ? Colors.blue : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Relatorio();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.article_outlined,
                            color: currentTab == 2 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'Relatório',
                            style: TextStyle(
                              color:
                                  currentTab == 2 ? Colors.blue : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Logout();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.exit_to_app,
                            color: currentTab == 3 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'Sair',
                            style: TextStyle(
                              color:
                                  currentTab == 3 ? Colors.blue : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
