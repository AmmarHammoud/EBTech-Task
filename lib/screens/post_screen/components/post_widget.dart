import 'package:ebtech_task/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

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
                CircleAvatar(),
                SizedBox(width: screenWidth * 0.02,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mike Chen', style: textTheme.bodyMedium,),
                    Text('${DateFormat("MMMM d, yyyy 'at' hh:mm a").format(DateTime.parse('2025-10-13T18:45:00Z').toLocal())}', style: textTheme.labelSmall,),
                  ],
                ),
                Expanded(child: SizedBox()),
                IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.penToSquare, size: 17,)),
                IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.trashCan, color: Colors.red, size: 17,)),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            Text('The Future of Web Development', style: textTheme.bodyLarge,),
            Text(
              'Web development is evolving rapidly with new frameworks and tools emerging every day. Staying up to date is crucial for modern developers.', style: textTheme.bodySmall,),
            SizedBox(height: screenHeight * 0.03),
            Divider(color: Constants.borderColor, thickness: 1.1,),
            Row(
              children: [
                Icon(FontAwesomeIcons.comment, size: 16,),
                SizedBox(width: screenWidth * 0.01,),
                Text('1 comments', style: textTheme.bodySmall,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
