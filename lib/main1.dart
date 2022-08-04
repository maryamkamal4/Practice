import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Stateful App Example',
    home: FavoriteCity(),
  ));
}

class FavoriteCity extends StatefulWidget {
  const FavoriteCity({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {

  String nameCity = "";
  final _currencies = ['Rupees', 'Dollars', 'Pounds', 'Others'];
  var _currentItemSelected = 'Rupees';

  @override
  Widget build(BuildContext context) {

    debugPrint("Favorite City widget is created");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful App Example"),
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  debugPrint("set State is called, this tells framework to redraw the FavCity widget");
                  nameCity = userInput;
                });
              },
            ),
            DropdownButton<String>(

              items: _currencies.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),

              onChanged: (String? newValueSelected) {
                // Your code to execute, when a menu item is selected from drop down
                _onDropDownItemSelected(newValueSelected!);
              },

              value: _currentItemSelected,

            ),
            Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  "Your best city is $nameCity",
                  style: const TextStyle(fontSize: 20.0),
                ))
          ],
        ),
      ),
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      _currentItemSelected = newValueSelected;
    });
  }
}