class Note {
  Note({
    required this.title,
    required this.date,
    this.description,
    this.isEditing = false,
  });
  String title;
  String? description;
  DateTime date;
  bool isEditing;
  //static List<Note> getNotes() {
  //return [

  //];
  //}
}
