import 'package:eek_flutter_01/models/note-model.dart';
import 'package:eek_flutter_01/widgets/note-row-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Märkmik"),
      ),
      body: Center(
          child: Column(
        children:
            getTestNotes().map((note) => NoteRowWidget(note: note)).toList(),
      )),
    );
  }
}
