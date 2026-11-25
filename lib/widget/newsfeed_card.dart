import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:delossantos_mobprog/constant.dart';
import 'package:delossantos_mobprog/widget/custom_text.dart';
import 'package:material_ui/material_ui.dart';
import 'package:delossantos_mobprog/widget/post_image.dart';
import 'package:delossantos_mobprog/widget/user_avatar.dart';
import 'package:delossantos_mobprog/widget/post_action.dart'; 

class NewsfeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final String? userImage;
  final int? numOfLikes;
  final bool? hasImage;
  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes,
    this.hasImage,
    this.userImage
  });

  @override
  Widget build(BuildContext context) {
    final screenUtilSp = ScreenUtil().setSp(10);
    final screenUtilWidth = ScreenUtil().setWidth(10);
    final screenUtilFontUserNameSize = ScreenUtil().setSp(15);
    final screenUtilIconSize = ScreenUtil().setSp(15);

    return Card(
      margin: EdgeInsets.all(screenUtilSp),
      child: Padding(
        padding: EdgeInsets.all(screenUtilSp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                UserAvatar(
                  imagePath: userImage,
                ),
                SizedBox(width: screenUtilWidth),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      fontSize: screenUtilFontUserNameSize,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(3)),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: screenUtilIconSize,
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            hasImage == true
            ? PostImage(
                imagePath: 'assets/images/jaz.png',
              )
            : const SizedBox.shrink(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PostAction(
                  icon: Icons.thumb_up,
                  label: numOfLikes.toString(),
                  color: fbDarkPrimary,
                  onPressed: () {},
                ),
                PostAction(
                  icon: Icons.comment,
                  label: 'Comment',
                  color: fbDarkPrimary,
                  onPressed: () {},
                ),
                PostAction(
                  icon: Icons.share,
                  label: 'Share',
                  color: fbDarkPrimary,
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              children: [
                UserAvatar(
                  imagePath: userImage,
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10.w),
                    alignment: Alignment.centerLeft,
                    height: 25.h,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: CustomText(
                      text: 'Write a comment...',
                      fontSize: 11.sp,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomText(
              text: 'View all comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}