import 'package:eek_flutter_01/models/note-model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

class NoteRowWidget extends StatelessWidget {
  const NoteRowWidget({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.access_alarm),
        Column(
          children: [
            Text(note.title),
            Text(note.message),
          ],
        ),
        Text(DateFormat('kk:mm dd.MM.yyyy').format(note.date)),
      ],
    );
  }
}
