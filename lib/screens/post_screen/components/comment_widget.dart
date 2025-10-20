import 'package:flutter/material.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(backgroundColor: Colors.grey[300], child: Text('PW'),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Pat Wilson'),
                Text('21h ago'),
                Text('The pace of change can be overwhelming sometimes!'),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
      ),
    );
  }
}
