import 'package:getx_api/model/teams_model.dart';

import 'goal_model.dart';

class FixtureItemModel {
  final TeamsModel teams;
  final GoalModel goals;

  FixtureItemModel({required this.teams, required this.goals});

  factory FixtureItemModel.fromJson(Map<String, dynamic> json) =>
      FixtureItemModel(
        teams: TeamsModel.fromJson(json['teams']
        ),
        goals: GoalModel.fromJson(json['goals']),
      );
}
