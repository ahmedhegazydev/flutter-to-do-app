import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sqflite_database_example/data/note.dart';

final _lightColors = [
  Colors.pinkAccent.shade100,
  Colors.tealAccent.shade100,
  Colors.tealAccent.shade400,
  Colors.lightBlue,
  Colors.green,
  Colors.amber.shade300,
  Colors.lightGreen.shade300,
  Colors.lightBlue.shade300,
  Colors.orange.shade300,
];

class NoteCardWidget extends StatelessWidget {
  NoteCardWidget({
    Key? key,
    required this.note,
    required this.index,
  }) : super(key: key);

  final Note note;
  final int index;

  @override
  Widget build(BuildContext context) {
    /// Pick colors from the accent colors based on index
    final color = _lightColors[index % _lightColors.length];
    final time = DateFormat.yMMMd().format(note.createdTime);
    final minHeight = getMinHeight(index);

    return Card(
      // elevation: 2,  // Change this
      // shadowColor: Colors.white,  // Change this
      color: color,
      child: Container(
        constraints: BoxConstraints(minHeight: minHeight),
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              time,
              style: TextStyle(color: Colors.grey.shade700),
            ),
            SizedBox(height: 4),
            Text(
              note.title,
              // overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              note.description,
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              textAlign: TextAlign.justify,
              style: TextStyle(
                // color: Colors.black,
                color: Colors.black54,
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// To return different height for different widgets
  double getMinHeight(int index) {
    switch (index % 4) {
      case 0:
        return 100;
      case 1:
        return 150;
      case 2:
        return 150;
      case 3:
        return 100;
      default:
        return 100;
    }
  }
}
