import 'package:ebtech_task/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class CommentWidget extends StatelessWidget {
  const CommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Constants.borderColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(backgroundColor: Colors.grey[300], child: Text('PW'),),
            SizedBox(width: screenWidth * 0.02,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pat Wilson'),
                  // Text('21h ago', style: textTheme.labelSmall,),
                  Text('${timeago.format(DateTime.parse('2025-10-13T18:45:00Z').toLocal(), locale: 'en_short', allowFromNow: true)}', style: textTheme.labelSmall,),
                  Text('The pace of change can be overwhelming sometimes!', style: textTheme.bodySmall,),
                ],
              ),
            ),
            // Expanded(child: SizedBox()),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
      ),
    );
  }
}
