class NoteModel {
  late String title;
  late String message;
  late DateTime date;
  late String emoji;
}

List<NoteModel> getTestNotes() {
  var note1 = NoteModel();
  note1.title = "Wifi passwords";
  note1.message = "g3jl32t3, 215l1j32t";
  note1.date = DateTime.now();
  note1.emoji = "";

  var note2 = NoteModel();
  note2.title = "Shopping list";
  note2.message = "Milk, eggs, bacon";
  note2.date = DateTime.now();
  note2.emoji = "";

  return [note1, note2];
}
