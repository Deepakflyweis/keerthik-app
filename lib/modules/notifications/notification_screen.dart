

import 'package:flutter/material.dart';
import 'package:kerthik_app/utils/app_color.dart';
import 'package:kerthik_app/utils/text_style.dart';

import '../../utils/packages_used.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: whiteclr,
          elevation: 0,
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back_ios,size: 25,)),
          title: Text('Notification', style: headingTxtStyle),
          centerTitle: true,
        ),
        body: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index){
            return ListTile(
              leading: Icon(Icons.notifications,color: blckclr,size: 25),
              title: Text('Lorem Ipsum dolor sit amit',
                  softWrap: true,
                  style: TxtStyleN,
                  overflow: TextOverflow.ellipsis),
              subtitle: Text('Lorem Ipsum dolor sit amitLorem Ipsum dolor sit amit',
              style: hintTxtStyle,
                maxLines: 2,
                  overflow: TextOverflow.ellipsis
              ),
              trailing: Text('10:00 p:m', style:hintTxtStyle),
            );
            }
        ),
      ),
    );
  }
}
