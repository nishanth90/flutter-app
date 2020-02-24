import 'package:flutter/material.dart';
import 'package:test_web/tab1.dart';
import 'package:test_web/tab2.dart';
import 'package:test_web/tab3.dart';

class MainPage extends StatefulWidget {
  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              DrawerHeader(
                  child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow,
                ),
              ))
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(93, 195, 232, 0.5),
          centerTitle: true,
          title: Text("Rule Categories"),
          bottom: TabBar(
            labelColor: Colors.redAccent,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Colors.orange),
            tabs: <Widget>[
              Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Tab 1",
                      style: TextStyle(color: Colors.indigo),
                    ),
                  ),
                  icon: Icon(
                    Icons.airport_shuttle,
                    color: Colors.indigo,
                  )),
              Tab(
                child: Align(alignment: Alignment.center, child: Text("Tab 2")),
                icon: Icon(Icons.local_offer),
              ),
              Tab(
                child: Align(alignment: Alignment.center, child: Text("Tab 3")),
                icon: Icon(Icons.publish),
              ),
              Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Tab 4",
                      style: TextStyle(color: Colors.indigo),
                    ),
                  ),
                  icon: Icon(
                    Icons.airport_shuttle,
                    color: Colors.indigo,
                  )),
                  Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Tab 5",
                      style: TextStyle(color: Colors.indigo),
                    ),
                  ),
                  icon: Icon(
                    Icons.airport_shuttle,
                    color: Colors.indigo,
                  )),
                  Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Tab 6",
                      style: TextStyle(color: Colors.indigo),
                    ),
                  ),
                  icon: Icon(
                    Icons.airport_shuttle,
                    color: Colors.indigo,
                  )),
                  Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Tab 7",
                      style: TextStyle(color: Colors.indigo),
                    ),
                  ),
                  icon: Icon(
                    Icons.airport_shuttle,
                    color: Colors.indigo,
                  )),
            ],
          ),
        ),
        body: TabBarView(children: [
          Tab1(),
          Tab2(),
          Tab3(),
          Tab3(),
          Tab3(),
          Tab3(),
          Tab3(),
        ]),
      ),
    );
  }
}
