import 'package:isar_plus/isar_plus.dart';

part 'restriction_rule.g.dart';

enum RestrictionType { volume, interval }
enum IntervalAction { allow, block }

@collection
class RestrictionRule {
  @Id()
  int id = 0;


  late RestrictionType restrictionType;

  // For restrictionType = volume
  int? maxTimeInSeconds;

  // For restrictionType = interval
  late IntervalAction intervalAction; // no `?`
  int? startInterval;
  int? endInterval;
}
