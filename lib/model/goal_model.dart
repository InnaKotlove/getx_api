class GoalModel {
  final int? home;
  final int? away;

  GoalModel({
    required this.home,
    required this.away,
  });

  factory GoalModel.fromJson(Map<String, dynamic> json) => GoalModel(
    home: json['home'],
    away: json['away'],
  );
}
