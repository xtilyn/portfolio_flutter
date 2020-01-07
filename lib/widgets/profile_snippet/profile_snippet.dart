import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/social_media/social_media.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProfileSnippet extends StatelessWidget {
  const ProfileSnippet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final bool isMobile =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile;

      var titlePosition =
          sizingInformation.deviceScreenType == DeviceScreenType.Desktop
              ? MainAxisAlignment.start
              : MainAxisAlignment.center;

      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.Desktop
              ? TextAlign.left
              : TextAlign.center;

      var imageSize =
          sizingInformation.deviceScreenType == DeviceScreenType.Desktop
              ? 100.0
              : 70.0;

      double titleSize = isMobile ? 40 : 70;
      double descriptionSize = isMobile ? 16 : 21;
      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: titlePosition,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: imageSize,
                      backgroundImage: AssetImage('assets/logo.png'),
                    ),
                    SizedBox(width: 14,),
                    Text(
                      'CHRISTILYN\nARJONA',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        height: 0.9,
                        fontSize: titleSize,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: isMobile ? 15 : 30,
            ),
            Padding(
              padding: EdgeInsets.all(isMobile ? 20 : 0),
              child: Text(
                'I\'m a Software Developer who specializes in Native Mobile App Development, UI/UX Design, and Front-end Web Development with React (and Flutter!).',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.7,
                ),
                textAlign: textAlignment,
              ),
            ),
            SizedBox(
              height: isMobile ? 12 : 30 
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialMedia('Stack Overflow', 'https://stackoverflow.com/users/7881446/christilyn', 'assets/stackoverflow_logo.png'),
                SocialMedia('LinkedIn', 'https://www.linkedin.com/in/christilyn-arjona/', 'assets/linked_in_logo.jpg'),
                SocialMedia('GitHub', 'https://github.com/xtilyn', 'assets/github_logo.png')
              ],
            )
          ],
        ),
      );
    });
  }
}
