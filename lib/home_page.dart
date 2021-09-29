// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:special_counter/colores.dart';
import 'package:special_counter/contador.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador v2.0"),
      ),
      body: ListView(
        children: [
          Consumer<BgColor>(
            builder: (context, bgColor, child) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.70,
                margin: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: bgColor.colors[bgColor.currentColorIndex],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Consumer<Contador>(
                    builder: (context, counter, child) {
                      return Text("${counter.count}",
                          style: TextStyle(fontSize: 72));
                    },
                  ),
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                child: Text(
                  "BLACK",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.black87,
                onPressed: () {
                  context.read<BgColor>().changeColor(1);
                },
              ),
              MaterialButton(
                child: Text(
                  "RED",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.red,
                onPressed: () {
                  context.read<BgColor>().changeColor(2);
                },
              ),
              MaterialButton(
                child: Text(
                  "BLUE",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.blue,
                onPressed: () {
                  context.read<BgColor>().changeColor(3);
                },
              ),
              MaterialButton(
                child: Text(
                  "GREEN",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.green,
                onPressed: () {
                  context.read<BgColor>().changeColor(4);
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Sumar 1 cuenta",
                  icon: Icon(Icons.add),
                  color: Colors.grey[200],
                  onPressed: () {
                    context.read<Contador>().increment();
                  },
                ),
              ),
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Restar 1 cuenta",
                  icon: Icon(Icons.remove),
                  color: Colors.grey[200],
                  onPressed: () {
                    context.read<Contador>().decrement();
                  },
                ),
              ),
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Reiniciar cuenta",
                  icon: Icon(Icons.restart_alt),
                  color: Colors.grey[200],
                  onPressed: () {
                    context.read<Contador>().reset();
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
