import 'package:flutter/material.dart';
import 'package:tasbex_app/screens/webview_screen.dart';

class SecondScreen extends StatefulWidget {
  static const String id = 'second_screen';

  int? totalS;
  int? totalA;
  int? totalO;

  SecondScreen({Key? key, this.totalO, this.totalA, this.totalS})
      : super(key: key);


  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _totalCounts(title: 'Subhanallah', count: '${widget.totalS}'),
                _totalCounts(title: 'Alhamdulillah', count: '${widget.totalA}'),
                _totalCounts(title: 'Allahu akbar', count: '${widget.totalO}'),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Image(
          //     height: 350,
          //     fit: BoxFit.cover,
          //     image: AssetImage('assets/images/m1.jpg')),
          const WebViewOnline(),
        ],
      ),
    );
  }

  Widget _totalCounts({String? title, String? count}) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.black,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            count!.toString(),
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
