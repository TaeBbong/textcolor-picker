import 'package:flutter/material.dart';

class TabletScreen extends StatefulWidget {
  @override
  _TabletScreenState createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
  Color background = Colors.black87;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextColor Picker'),
      ),
      body: Row(
        children: [
          Container(
            child: Column(children: [
              Text('Enter Background Color'),
              ElevatedButton(onPressed: () {}, child: Text('Apply')),
            ]),
          ),
          VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: Container(
                color: background,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Center(
                        child: Text(
                          'Lorem Ipsum',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Center(
                        child: Text(
                          'Lorem Ipsum',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
