import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SignInWithGoogleButton extends StatelessWidget {
  var action;

  SignInWithGoogleButton({Key? key, required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(color: Colors.grey, width: 0.7)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(5.r),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Image.asset(
                "assets/images/google_g.png",
                height:80
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              "Sign in with Google",
              style: TextStyle(
                  color: Colors.black,
                  fontSize:  14.sp),
            ),
          ],
        ),
      ),
    );
  }
}
