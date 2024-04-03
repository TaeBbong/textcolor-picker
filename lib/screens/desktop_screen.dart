import 'package:flutter/material.dart';

class DesktopScreen extends StatefulWidget {
  @override
  _DesktopScreenState createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  Color background = Color(0xff414141);
  TextEditingController _controller = TextEditingController();
  // Function to validate and convert color string to hex value with full opacity
  int? convertToHex(String colorString) {
    // Regular expression to validate color string (3 or 6 hexadecimal digits, with or without '#')
    final RegExp colorRegExp = RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$');

    if (!colorRegExp.hasMatch(colorString)) {
      print("Invalid color format");
      return null; // Return null if color string is invalid
    }

    // Removing '#' if present and adjusting 3-digit hex to 6-digit by duplicating digits
    String valueString = colorString.replaceFirst('#', '');
    if (valueString.length == 3) {
      valueString = valueString.split('').map((c) => '$c$c').join('');
    }

    int value = int.parse(valueString, radix: 16);
    return value + 0xFF000000; // Adding full opacity
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final String color = _controller.text.toLowerCase();
      int? colorValue = convertToHex(color);
      if (colorValue != null) {
        print(colorValue); // This prints the hex value with alpha
        setState(() {
          background = Color(colorValue);
        });
      } else {
        print("Color conversion failed.");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('TextColor Selector'),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Enter Background Color'),
                  TextField(
                    decoration: InputDecoration(hintText: '#414141'),
                    controller: _controller,
                  ),
                ],
              ),
            ),
          ),
          VerticalDivider(thickness: 1, width: 1),
          Expanded(
            flex: 8,
            child: Column(children: [
              Expanded(
                child: Container(
                  color: background,
                  child: Center(
                    child: Text(
                      'White Text',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
              Divider(),
              Expanded(
                child: Container(
                  color: background,
                  child: Center(
                    child: Text(
                      'Black Text',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
