// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_firstapp/layout_column.dart';
import 'package:flutter_firstapp/layout_listview.dart';
import 'package:flutter_firstapp/layout_row.dart';

void main() {
  runApp(TasbihCounter());
}

class TasbihCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasbih Counter',
      home: LayoutListView(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

// Kelas Halaman Penghitung
class CounterPage extends StatefulWidget {
  CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // inisialisasi nilai awal
  int _count = 1;

  void incrementBuku() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tasbih Counter')),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text(
              'Tasbih counter: $_count',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            )
          ])),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementBuku,
        tooltip: 'Add Tasbih',
        child: Icon(Icons.add),
      ),
    );
  }
}

// sebuah class yang stateless
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Basic Structure')),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('Belajar Dasar Flutter',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
              Text('Struktur Dasar Aplikasi Flutter',
                  style: TextStyle(fontStyle: FontStyle.italic)),
              Text('Flutter Sederhana')
            ],
          ),
        ));
  }
}
