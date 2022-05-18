import 'package:flutter/material.dart';
import 'package:tasbex_app/screens/first_screen.dart';

import 'package:tasbex_app/screens/second_screen.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);
  static const String id = 'home_screen';

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int counter = 0;
  int counter1 = 0;
  String result = '';
  int totalS = 0;
  int totalA = 0;
  int totalO = 0;

  String counterMethod() {
    String r = '';
    counter++;
    if (counter > 33) {
      counter1++;
      counter = 0;
    }

    if (counter1 == 0) {
      r = 'Subhanallah: ' + counter.toString();
      totalS += 1;
    } else if (counter1 == 1) {
      r = 'Alhamdulillah: ' + counter.toString();
      if (counter == 0) {
        return r;
      }

      totalA += 1;
    } else if (counter1 == 2) {
      r = 'Allahu akbar: ' + counter.toString();
      if (counter == 0) {
        return r;
      }
      totalO += 1;
    } else {
      counter1 = 0;
    }
    setState(() {});
    return r;
  }

  void change() {
    counter = 0;
    counter1 = 0;
    result = '';
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text(
              'Zikr Counter',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Zikr Counter',
                ),
                Tab(
                  icon: Icon(Icons.business),
                  text: 'Total number of Zikr',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              _firstPage(),
              SecondScreen(totalS: totalS, totalA: totalA, totalO: totalO),
            ],
          ),
          drawer: Drawer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  height: 250,
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _account(
                          image: 'assets/images/image3.jpg',
                          name: 'Name: Islam',
                          sureName: 'SureName: Shamurov',
                          number: 'Number: 8504734',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }


  Widget _firstPage() {
    return Scaffold(
        body: Stack(
          children: [
            Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/image.jpeg'),
              filterQuality: FilterQuality.high,
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: MaterialButton(
                  minWidth: 200,
                  height: 70,
                  color: Colors.white,
                  child: Text(
                    result,
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: change,
              ),
            )
          ],
        ),
        floatingActionButton: Container(
          height: 100,
          width: 100,
          child: FloatingActionButton(
            backgroundColor: Colors.black,
            child: Icon(
              Icons.add,
              size: 50,
            ),
            onPressed: () {
              setState(() {
                result = counterMethod();
              });
            },
          ),
        )
    );
  }

  Widget _account({image, name, sureName, number}) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage(image),
                    width: 70,
                    height: 70,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 12),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      sureName,
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 12),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      number,
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
