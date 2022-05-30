import 'package:flutter/material.dart';
import 'package:myislape/constantes.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: firstColor,
        title: const Text(
          "MyIslape",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'PopRegular',
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
