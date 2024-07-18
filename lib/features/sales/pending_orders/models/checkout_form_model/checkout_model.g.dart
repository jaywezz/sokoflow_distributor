// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCheckOutModelCollection on Isar {
  IsarCollection<CheckOutModel> get checkOutModels => this.collection();
}

const CheckOutModelSchema = CollectionSchema(
  name: r'CheckOutModel',
  id: -6965795401481209483,
  properties: {
    r'didLeadMakeOrder': PropertySchema(
      id: 0,
      name: r'didLeadMakeOrder',
      type: IsarType.string,
    ),
    r'leadStatus': PropertySchema(
      id: 1,
      name: r'leadStatus',
      type: IsarType.string,
    ),
    r'nextStep': PropertySchema(
      id: 2,
      name: r'nextStep',
      type: IsarType.string,
    ),
    r'potentialCompetitors': PropertySchema(
      id: 3,
      name: r'potentialCompetitors',
      type: IsarType.string,
    ),
    r'reasonForNoOrder': PropertySchema(
      id: 4,
      name: r'reasonForNoOrder',
      type: IsarType.string,
    )
  },
  estimateSize: _checkOutModelEstimateSize,
  serialize: _checkOutModelSerialize,
  deserialize: _checkOutModelDeserialize,
  deserializeProp: _checkOutModelDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _checkOutModelGetId,
  getLinks: _checkOutModelGetLinks,
  attach: _checkOutModelAttach,
  version: '3.1.0+1',
);

int _checkOutModelEstimateSize(
  CheckOutModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.didLeadMakeOrder;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.leadStatus;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.nextStep;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.potentialCompetitors;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.reasonForNoOrder;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _checkOutModelSerialize(
  CheckOutModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.didLeadMakeOrder);
  writer.writeString(offsets[1], object.leadStatus);
  writer.writeString(offsets[2], object.nextStep);
  writer.writeString(offsets[3], object.potentialCompetitors);
  writer.writeString(offsets[4], object.reasonForNoOrder);
}

CheckOutModel _checkOutModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CheckOutModel(
    didLeadMakeOrder: reader.readStringOrNull(offsets[0]),
    leadStatus: reader.readStringOrNull(offsets[1]),
    nextStep: reader.readStringOrNull(offsets[2]),
    potentialCompetitors: reader.readStringOrNull(offsets[3]),
    reasonForNoOrder: reader.readStringOrNull(offsets[4]),
  );
  object.isarId = id;
  return object;
}

P _checkOutModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _checkOutModelGetId(CheckOutModel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _checkOutModelGetLinks(CheckOutModel object) {
  return [];
}

void _checkOutModelAttach(
    IsarCollection<dynamic> col, Id id, CheckOutModel object) {
  object.isarId = id;
}

extension CheckOutModelQueryWhereSort
    on QueryBuilder<CheckOutModel, CheckOutModel, QWhere> {
  QueryBuilder<CheckOutModel, CheckOutModel, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CheckOutModelQueryWhere
    on QueryBuilder<CheckOutModel, CheckOutModel, QWhereClause> {
  QueryBuilder<CheckOutModel, CheckOutModel, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CheckOutModelQueryFilter
    on QueryBuilder<CheckOutModel, CheckOutModel, QFilterCondition> {
  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      didLeadMakeOrderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'didLeadMakeOrder',
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      didLeadMakeOrderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'didLeadMakeOrder',
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      didLeadMakeOrderEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'didLeadMakeOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      didLeadMakeOrderGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'didLeadMakeOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      didLeadMakeOrderLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'didLeadMakeOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      didLeadMakeOrderBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'didLeadMakeOrder',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      didLeadMakeOrderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'didLeadMakeOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      didLeadMakeOrderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'didLeadMakeOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      didLeadMakeOrderContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'didLeadMakeOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      didLeadMakeOrderMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'didLeadMakeOrder',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      didLeadMakeOrderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'didLeadMakeOrder',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      didLeadMakeOrderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'didLeadMakeOrder',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      leadStatusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leadStatus',
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      leadStatusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leadStatus',
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      leadStatusEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leadStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      leadStatusGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leadStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      leadStatusLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leadStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      leadStatusBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leadStatus',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      leadStatusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'leadStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      leadStatusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'leadStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      leadStatusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'leadStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      leadStatusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'leadStatus',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      leadStatusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leadStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      leadStatusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'leadStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      nextStepIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nextStep',
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      nextStepIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nextStep',
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      nextStepEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nextStep',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      nextStepGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nextStep',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      nextStepLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nextStep',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      nextStepBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nextStep',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      nextStepStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nextStep',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      nextStepEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nextStep',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      nextStepContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nextStep',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      nextStepMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nextStep',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      nextStepIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nextStep',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      nextStepIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nextStep',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      potentialCompetitorsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'potentialCompetitors',
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      potentialCompetitorsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'potentialCompetitors',
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      potentialCompetitorsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'potentialCompetitors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      potentialCompetitorsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'potentialCompetitors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      potentialCompetitorsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'potentialCompetitors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      potentialCompetitorsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'potentialCompetitors',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      potentialCompetitorsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'potentialCompetitors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      potentialCompetitorsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'potentialCompetitors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      potentialCompetitorsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'potentialCompetitors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      potentialCompetitorsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'potentialCompetitors',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      potentialCompetitorsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'potentialCompetitors',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      potentialCompetitorsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'potentialCompetitors',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      reasonForNoOrderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reasonForNoOrder',
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      reasonForNoOrderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reasonForNoOrder',
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      reasonForNoOrderEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reasonForNoOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      reasonForNoOrderGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reasonForNoOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      reasonForNoOrderLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reasonForNoOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      reasonForNoOrderBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reasonForNoOrder',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      reasonForNoOrderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'reasonForNoOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      reasonForNoOrderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'reasonForNoOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      reasonForNoOrderContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reasonForNoOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      reasonForNoOrderMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reasonForNoOrder',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      reasonForNoOrderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reasonForNoOrder',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterFilterCondition>
      reasonForNoOrderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reasonForNoOrder',
        value: '',
      ));
    });
  }
}

extension CheckOutModelQueryObject
    on QueryBuilder<CheckOutModel, CheckOutModel, QFilterCondition> {}

extension CheckOutModelQueryLinks
    on QueryBuilder<CheckOutModel, CheckOutModel, QFilterCondition> {}

extension CheckOutModelQuerySortBy
    on QueryBuilder<CheckOutModel, CheckOutModel, QSortBy> {
  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy>
      sortByDidLeadMakeOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'didLeadMakeOrder', Sort.asc);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy>
      sortByDidLeadMakeOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'didLeadMakeOrder', Sort.desc);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy> sortByLeadStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadStatus', Sort.asc);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy>
      sortByLeadStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadStatus', Sort.desc);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy> sortByNextStep() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextStep', Sort.asc);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy>
      sortByNextStepDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextStep', Sort.desc);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy>
      sortByPotentialCompetitors() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'potentialCompetitors', Sort.asc);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy>
      sortByPotentialCompetitorsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'potentialCompetitors', Sort.desc);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy>
      sortByReasonForNoOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reasonForNoOrder', Sort.asc);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy>
      sortByReasonForNoOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reasonForNoOrder', Sort.desc);
    });
  }
}

extension CheckOutModelQuerySortThenBy
    on QueryBuilder<CheckOutModel, CheckOutModel, QSortThenBy> {
  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy>
      thenByDidLeadMakeOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'didLeadMakeOrder', Sort.asc);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy>
      thenByDidLeadMakeOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'didLeadMakeOrder', Sort.desc);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy> thenByLeadStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadStatus', Sort.asc);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy>
      thenByLeadStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadStatus', Sort.desc);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy> thenByNextStep() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextStep', Sort.asc);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy>
      thenByNextStepDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextStep', Sort.desc);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy>
      thenByPotentialCompetitors() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'potentialCompetitors', Sort.asc);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy>
      thenByPotentialCompetitorsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'potentialCompetitors', Sort.desc);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy>
      thenByReasonForNoOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reasonForNoOrder', Sort.asc);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QAfterSortBy>
      thenByReasonForNoOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reasonForNoOrder', Sort.desc);
    });
  }
}

extension CheckOutModelQueryWhereDistinct
    on QueryBuilder<CheckOutModel, CheckOutModel, QDistinct> {
  QueryBuilder<CheckOutModel, CheckOutModel, QDistinct>
      distinctByDidLeadMakeOrder({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'didLeadMakeOrder',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QDistinct> distinctByLeadStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leadStatus', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QDistinct> distinctByNextStep(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nextStep', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QDistinct>
      distinctByPotentialCompetitors({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'potentialCompetitors',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CheckOutModel, CheckOutModel, QDistinct>
      distinctByReasonForNoOrder({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reasonForNoOrder',
          caseSensitive: caseSensitive);
    });
  }
}

extension CheckOutModelQueryProperty
    on QueryBuilder<CheckOutModel, CheckOutModel, QQueryProperty> {
  QueryBuilder<CheckOutModel, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<CheckOutModel, String?, QQueryOperations>
      didLeadMakeOrderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'didLeadMakeOrder');
    });
  }

  QueryBuilder<CheckOutModel, String?, QQueryOperations> leadStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leadStatus');
    });
  }

  QueryBuilder<CheckOutModel, String?, QQueryOperations> nextStepProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nextStep');
    });
  }

  QueryBuilder<CheckOutModel, String?, QQueryOperations>
      potentialCompetitorsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'potentialCompetitors');
    });
  }

  QueryBuilder<CheckOutModel, String?, QQueryOperations>
      reasonForNoOrderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reasonForNoOrder');
    });
  }
}
