import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Restaurant()));
}

class Restaurant extends StatefulWidget {
  const Restaurant({super.key});

  @override
  State<Restaurant> createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  int cont = 0;
  String msg = "Pode Entrar!";

  void increment() {
    if (cont < 10) {
      setState(() {
        cont++;
      });
    }
    if (cont == 10) {
      msg = "Lotado";
    }
  }

  void decrement() {
    if (cont > 0) {
      setState(() {
        cont--;
        msg = "Pode Entrar!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("imagem/imagem2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(msg, style: TextStyle(fontSize: 30, color: Colors.white)),
            Text(
              cont.toString(),
              style: TextStyle(fontSize: 100, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: increment,
                  child: Text(
                    "Entrar",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: Size(100, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                TextButton(
                  onPressed: decrement,
                  child: Text(
                    "Sair",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: Size(100, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold();
}
