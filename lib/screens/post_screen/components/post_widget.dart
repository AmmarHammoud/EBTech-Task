import 'package:ebtech_task/models/post_model.dart';
import 'package:ebtech_task/screens/post_screen/post_screen.dart';
import 'package:ebtech_task/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key, required this.postModel});

  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Constants.borderColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(postModel.authorAvatar),
                ),
                SizedBox(width: screenWidth * 0.02),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(postModel.authorName, style: textTheme.bodyMedium),
                    Text(
                      DateFormat(
                        "MMMM d, yyyy 'at' hh:mm a",
                      ).format(postModel.time),
                      style: textTheme.labelSmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                // Expanded(child: SizedBox()),
                IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.penToSquare, size: 15),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.trashCan,
                    color: Colors.red,
                    size: 15,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            Text(postModel.title, style: textTheme.bodyLarge),
            Text(postModel.content, style: textTheme.bodySmall),
            SizedBox(height: screenHeight * 0.03),
            Divider(color: Constants.borderColor, thickness: 1.1),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (context) => PostScreen(postModel: postModel),
                  ),
                );
              },
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.comment, size: 16),
                  SizedBox(width: screenWidth * 0.01),
                  Text(
                    '${postModel.commentsCount} comments',
                    style: textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
