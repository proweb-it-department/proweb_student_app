import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class ScoreStatView extends StatelessWidget {
  final int score;
  const ScoreStatView({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final width = MediaQuery.of(context).size.width * 0.7;
    return Center(
      child: Stack(
        children: [
          Positioned(
            top: -(width * 0.3),
            right: -(width * 0.3),
            child: Opacity(
              opacity: 0.2,
              child: score <= 3
                  ? Lottie.asset(
                      'assets/lottie/Angry.json',
                      width: width,
                      height: width,
                      backgroundLoading: true,
                    )
                  : score == 4
                  ? Lottie.asset(
                      'assets/lottie/Slightly-frowning.json',
                      width: width,
                      height: width,
                      backgroundLoading: true,
                    )
                  : Lottie.asset(
                      'assets/lottie/Slightly-happy.json',
                      width: width,
                      height: width,
                      backgroundLoading: true,
                    ),
            ),
          ),
          Positioned(
            left: 30,
            top: 10,
            child: Text(
              '$score',
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              spacing: 15,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    if ((index + 1) <= score) {
                      return Icon(
                        Icons.star,
                        color: customColors?.warningFill,
                        size: 30,
                      );
                    }
                    return Icon(Icons.star_border, size: 30);
                  }),
                ),
                Text('attendence.i_like_teaching'.tr()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
