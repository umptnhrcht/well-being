// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restriction_rule.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRestrictionRuleCollection on Isar {
  IsarCollection<RestrictionRule> get restrictionRules => this.collection();
}

const RestrictionRuleSchema = CollectionSchema(
  name: r'RestrictionRule',
  id: 8215302171501339800,
  properties: {
    r'endInterval': PropertySchema(
      id: 0,
      name: r'endInterval',
      type: IsarType.long,
    ),
    r'intervalAction': PropertySchema(
      id: 1,
      name: r'intervalAction',
      type: IsarType.byte,
      enumMap: _RestrictionRuleintervalActionEnumValueMap,
    ),
    r'maxTimeInSeconds': PropertySchema(
      id: 2,
      name: r'maxTimeInSeconds',
      type: IsarType.long,
    ),
    r'restrictionType': PropertySchema(
      id: 3,
      name: r'restrictionType',
      type: IsarType.byte,
      enumMap: _RestrictionRulerestrictionTypeEnumValueMap,
    ),
    r'startInterval': PropertySchema(
      id: 4,
      name: r'startInterval',
      type: IsarType.long,
    )
  },
  estimateSize: _restrictionRuleEstimateSize,
  serialize: _restrictionRuleSerialize,
  deserialize: _restrictionRuleDeserialize,
  deserializeProp: _restrictionRuleDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _restrictionRuleGetId,
  getLinks: _restrictionRuleGetLinks,
  attach: _restrictionRuleAttach,
  version: '3.1.0+1',
);

int _restrictionRuleEstimateSize(
  RestrictionRule object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _restrictionRuleSerialize(
  RestrictionRule object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.endInterval);
  writer.writeByte(offsets[1], object.intervalAction.index);
  writer.writeLong(offsets[2], object.maxTimeInSeconds);
  writer.writeByte(offsets[3], object.restrictionType.index);
  writer.writeLong(offsets[4], object.startInterval);
}

RestrictionRule _restrictionRuleDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RestrictionRule();
  object.endInterval = reader.readLongOrNull(offsets[0]);
  object.id = id;
  object.intervalAction = _RestrictionRuleintervalActionValueEnumMap[
          reader.readByteOrNull(offsets[1])] ??
      IntervalAction.allow;
  object.maxTimeInSeconds = reader.readLongOrNull(offsets[2]);
  object.restrictionType = _RestrictionRulerestrictionTypeValueEnumMap[
          reader.readByteOrNull(offsets[3])] ??
      RestrictionType.volume;
  object.startInterval = reader.readLongOrNull(offsets[4]);
  return object;
}

P _restrictionRuleDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (_RestrictionRuleintervalActionValueEnumMap[
              reader.readByteOrNull(offset)] ??
          IntervalAction.allow) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (_RestrictionRulerestrictionTypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          RestrictionType.volume) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _RestrictionRuleintervalActionEnumValueMap = {
  'allow': 0,
  'block': 1,
};
const _RestrictionRuleintervalActionValueEnumMap = {
  0: IntervalAction.allow,
  1: IntervalAction.block,
};
const _RestrictionRulerestrictionTypeEnumValueMap = {
  'volume': 0,
  'interval': 1,
};
const _RestrictionRulerestrictionTypeValueEnumMap = {
  0: RestrictionType.volume,
  1: RestrictionType.interval,
};

Id _restrictionRuleGetId(RestrictionRule object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _restrictionRuleGetLinks(RestrictionRule object) {
  return [];
}

void _restrictionRuleAttach(
    IsarCollection<dynamic> col, Id id, RestrictionRule object) {
  object.id = id;
}

extension RestrictionRuleQueryWhereSort
    on QueryBuilder<RestrictionRule, RestrictionRule, QWhere> {
  QueryBuilder<RestrictionRule, RestrictionRule, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RestrictionRuleQueryWhere
    on QueryBuilder<RestrictionRule, RestrictionRule, QWhereClause> {
  QueryBuilder<RestrictionRule, RestrictionRule, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RestrictionRuleQueryFilter
    on QueryBuilder<RestrictionRule, RestrictionRule, QFilterCondition> {
  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      endIntervalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'endInterval',
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      endIntervalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'endInterval',
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      endIntervalEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endInterval',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      endIntervalGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'endInterval',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      endIntervalLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'endInterval',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      endIntervalBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'endInterval',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      intervalActionEqualTo(IntervalAction value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'intervalAction',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      intervalActionGreaterThan(
    IntervalAction value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'intervalAction',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      intervalActionLessThan(
    IntervalAction value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'intervalAction',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      intervalActionBetween(
    IntervalAction lower,
    IntervalAction upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'intervalAction',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      maxTimeInSecondsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'maxTimeInSeconds',
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      maxTimeInSecondsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'maxTimeInSeconds',
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      maxTimeInSecondsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxTimeInSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      maxTimeInSecondsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxTimeInSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      maxTimeInSecondsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxTimeInSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      maxTimeInSecondsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxTimeInSeconds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      restrictionTypeEqualTo(RestrictionType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'restrictionType',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      restrictionTypeGreaterThan(
    RestrictionType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'restrictionType',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      restrictionTypeLessThan(
    RestrictionType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'restrictionType',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      restrictionTypeBetween(
    RestrictionType lower,
    RestrictionType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'restrictionType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      startIntervalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'startInterval',
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      startIntervalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'startInterval',
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      startIntervalEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startInterval',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      startIntervalGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'startInterval',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      startIntervalLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'startInterval',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterFilterCondition>
      startIntervalBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'startInterval',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RestrictionRuleQueryObject
    on QueryBuilder<RestrictionRule, RestrictionRule, QFilterCondition> {}

extension RestrictionRuleQueryLinks
    on QueryBuilder<RestrictionRule, RestrictionRule, QFilterCondition> {}

extension RestrictionRuleQuerySortBy
    on QueryBuilder<RestrictionRule, RestrictionRule, QSortBy> {
  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy>
      sortByEndInterval() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endInterval', Sort.asc);
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy>
      sortByEndIntervalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endInterval', Sort.desc);
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy>
      sortByIntervalAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intervalAction', Sort.asc);
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy>
      sortByIntervalActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intervalAction', Sort.desc);
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy>
      sortByMaxTimeInSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxTimeInSeconds', Sort.asc);
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy>
      sortByMaxTimeInSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxTimeInSeconds', Sort.desc);
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy>
      sortByRestrictionType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restrictionType', Sort.asc);
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy>
      sortByRestrictionTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restrictionType', Sort.desc);
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy>
      sortByStartInterval() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startInterval', Sort.asc);
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy>
      sortByStartIntervalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startInterval', Sort.desc);
    });
  }
}

extension RestrictionRuleQuerySortThenBy
    on QueryBuilder<RestrictionRule, RestrictionRule, QSortThenBy> {
  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy>
      thenByEndInterval() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endInterval', Sort.asc);
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy>
      thenByEndIntervalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endInterval', Sort.desc);
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy>
      thenByIntervalAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intervalAction', Sort.asc);
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy>
      thenByIntervalActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intervalAction', Sort.desc);
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy>
      thenByMaxTimeInSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxTimeInSeconds', Sort.asc);
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy>
      thenByMaxTimeInSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxTimeInSeconds', Sort.desc);
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy>
      thenByRestrictionType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restrictionType', Sort.asc);
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy>
      thenByRestrictionTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restrictionType', Sort.desc);
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy>
      thenByStartInterval() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startInterval', Sort.asc);
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QAfterSortBy>
      thenByStartIntervalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startInterval', Sort.desc);
    });
  }
}

extension RestrictionRuleQueryWhereDistinct
    on QueryBuilder<RestrictionRule, RestrictionRule, QDistinct> {
  QueryBuilder<RestrictionRule, RestrictionRule, QDistinct>
      distinctByEndInterval() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'endInterval');
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QDistinct>
      distinctByIntervalAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'intervalAction');
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QDistinct>
      distinctByMaxTimeInSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxTimeInSeconds');
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QDistinct>
      distinctByRestrictionType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'restrictionType');
    });
  }

  QueryBuilder<RestrictionRule, RestrictionRule, QDistinct>
      distinctByStartInterval() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startInterval');
    });
  }
}

extension RestrictionRuleQueryProperty
    on QueryBuilder<RestrictionRule, RestrictionRule, QQueryProperty> {
  QueryBuilder<RestrictionRule, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RestrictionRule, int?, QQueryOperations> endIntervalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'endInterval');
    });
  }

  QueryBuilder<RestrictionRule, IntervalAction, QQueryOperations>
      intervalActionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'intervalAction');
    });
  }

  QueryBuilder<RestrictionRule, int?, QQueryOperations>
      maxTimeInSecondsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxTimeInSeconds');
    });
  }

  QueryBuilder<RestrictionRule, RestrictionType, QQueryOperations>
      restrictionTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'restrictionType');
    });
  }

  QueryBuilder<RestrictionRule, int?, QQueryOperations>
      startIntervalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startInterval');
    });
  }
}
