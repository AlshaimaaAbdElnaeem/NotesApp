import 'package:hive/hive.dart';
part 'note_model.g.dart';
@HiveType(typeId: (0))
class NoteModel extends HiveObject{
  @HiveField(1)
   String title;
    @HiveField(2)
   String content;
    @HiveField(3)
   int color;
    @HiveField(4)
  final String date;

  NoteModel({
    required this.title,
    required this.content,
    required this.color,
    required this.date,
  });
}
