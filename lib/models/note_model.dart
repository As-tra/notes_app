import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModal extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String content;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModal({
    required this.title,
    required this.content,
    required this.date,
    required this.color,
  });
}
