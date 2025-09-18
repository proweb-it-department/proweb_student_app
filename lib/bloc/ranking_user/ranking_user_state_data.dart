import 'package:proweb_student_app/models/user_course_ratings/user_course_ratings.dart';
import 'package:proweb_student_app/models/user_skill/user_skill.dart';
import 'package:proweb_student_app/models/user_total_position/user_total_position.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';

class RankingUser {
  final List<UserCourseRatings> rankingList;
  final UserTotalPosition? global;
  final LoadState loadState;
  RankingUser({
    required this.rankingList,
    this.global,
    required this.loadState,
  });
}

class RankingSkills {
  final List<UserSkill> skills;
  final LoadState loadState;
  RankingSkills({required this.skills, required this.loadState});
}
