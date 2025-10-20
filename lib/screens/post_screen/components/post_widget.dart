import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mike Chen'),
                    Text('October 13, 2025 at 06:45 PM'),
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
              ],
            ),
            SizedBox(height: 10),
            Text('The Future of Web Development'),
            Text(
              'Web development is evolving rapidly with new frameworks and tools emerging every day. Staying up to date is crucial for modern developers.',
            ),
            Divider(),
            Row(
              children: [
                Icon(Icons.comment),
                Text('1 comments'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
