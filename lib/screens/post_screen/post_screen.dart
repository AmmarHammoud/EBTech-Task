import 'package:ebtech_task/screens/post_screen/components/comment_widget.dart';
import 'package:ebtech_task/screens/post_screen/components/post_widget.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            PostWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Comments'),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Add Comment', style: TextStyle(color: Colors.white),),
                  style: ButtonStyle(
                    // foregroundColor: WidgetStateProperty.all<Color>(Color(0xff6b35)),
                    backgroundColor: WidgetStateProperty.all<Color>(Colors.deepOrange),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            CommentWidget(),
          ],
        ),
      ),
    );
  }
}
