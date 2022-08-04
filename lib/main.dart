import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI widgets",
    home: Scaffold(
      appBar: AppBar(title: const Text('Basic List View'),),
      body: getListView1(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('FAB clicked');
          },
        tooltip: 'Add one more item',
        child: const Icon(Icons.add),
      ),
    ),
  ));
}

Widget getListView() {
  var listView = ListView(
    children: [
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text('Landscape'),
        subtitle: Text('Beautiful View !!'),
        trailing: Icon(Icons.wb_cloudy),
        onTap: () {
          debugPrint("Landscape tapped");
        },
      ),
      ListTile(
        leading: Icon(Icons.window),
          title: Text('Window'),
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text('Phone'),
      ),
    ],
  );

  return listView;
}

List<String> getListElements() {

  var items = List<String>.generate(100, (counter) => "Item $counter");
  return items;
}

Widget getListView1() { //LONG list

  var listItems = getListElements();

  var listView = ListView.builder(

      itemCount: getListElements().length,
      itemBuilder: (context, index) {

        return ListTile(
          leading: Icon(Icons.arrow_right),
          title: Text(listItems[index]),
          onTap: () {
            showSnackBar(context, listItems[index]);
          },
        );
      }
  );

  return listView;
}

void showSnackBar(BuildContext context, String item) {
  var snackBar = SnackBar(
    content: Text("You just tapped $item"),
    action: SnackBarAction(
        label: "UNDO",
        onPressed: () {
          debugPrint('Performing dummy UNDO operation');
        }
    ),
  );

  Scaffold.of(context).showSnackBar(snackBar);
}