import 'package:eek_flutter_01/models/note-model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  NoteModel note = NoteModel();

  TextEditingController titleTextController = TextEditingController();
  TextEditingController messageTextController = TextEditingController();

  @override
  void initState() {
    note.title = "Demo";
    note.message = "This is test message";
    note.date = DateTime.now();
    note.emoji = "🌈";

    titleTextController.text = note.title;
    messageTextController.text = note.message;
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    titleTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Center(
                child: Column(
              children: [
                TextField(
                  controller: titleTextController,
                  decoration: InputDecoration(labelText: "Title"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: TextField(
                    controller: messageTextController,
                    maxLines: 12,
                    decoration: InputDecoration(
                        labelText: "Message",
                        border: OutlineInputBorder(),
                        hintText: 'Lorem ipsum...'),
                  ),
                ),
              ],
            )),
          ),
        ));
  }
}
