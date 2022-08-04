import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.deepPurple,
            margin: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "Hello",
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 70.0,
                            fontFamily: 'SquarePeg',
                            fontWeight: FontWeight.w400,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "This Is Maryam's World!",
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 50.0,
                            fontFamily: 'SquarePeg',
                            fontWeight: FontWeight.w400,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                viewImage(),
                worldButton(),
              ],
            )));
  }
}

class viewImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage('images/view.jpg');
    Image image = Image(
      image: assetImage,
      alignment: Alignment.center,
    );

    return Container(
        margin: const EdgeInsets.only(top: 20.0),
        alignment: Alignment.center,
        child: image);
  }
}

class worldButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110.0,
      height: 50.0,
      margin: const EdgeInsets.only(top: 30.0),
      child: RaisedButton(
          color: Colors.blue,
          elevation: 10.0,
          child: const Text(
            "Enter",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35.0,
              fontFamily: 'SquarePeg',
              fontWeight: FontWeight.w400,
            ),
          ),
          onPressed: () => enterWorld(context)),
    );
  }

  void enterWorld(BuildContext context) {
    var alertDialog = const AlertDialog(
      title: Text('World Entered Successfully'),
      content: Text('Have a pleasant time!!'),
    );

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
