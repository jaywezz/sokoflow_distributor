// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leads_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLeadsModelCollection on Isar {
  IsarCollection<LeadsModel> get leadsModels => this.collection();
}

const LeadsModelSchema = CollectionSchema(
  name: r'LeadsModel',
  id: -7677523427310593019,
  properties: {
    r'account': PropertySchema(
      id: 0,
      name: r'account',
      type: IsarType.string,
    ),
    r'action': PropertySchema(
      id: 1,
      name: r'action',
      type: IsarType.string,
    ),
    r'address': PropertySchema(
      id: 2,
      name: r'address',
      type: IsarType.string,
    ),
    r'approval': PropertySchema(
      id: 3,
      name: r'approval',
      type: IsarType.string,
    ),
    r'approvalProspectStatus': PropertySchema(
      id: 4,
      name: r'approvalProspectStatus',
      type: IsarType.string,
    ),
    r'businessCode': PropertySchema(
      id: 5,
      name: r'businessCode',
      type: IsarType.string,
    ),
    r'contactPerson': PropertySchema(
      id: 6,
      name: r'contactPerson',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 7,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'createdBy': PropertySchema(
      id: 8,
      name: r'createdBy',
      type: IsarType.string,
    ),
    r'customerGroup': PropertySchema(
      id: 9,
      name: r'customerGroup',
      type: IsarType.string,
    ),
    r'customerGroupId': PropertySchema(
      id: 10,
      name: r'customerGroupId',
      type: IsarType.long,
    ),
    r'customerId': PropertySchema(
      id: 11,
      name: r'customerId',
      type: IsarType.long,
    ),
    r'customerName': PropertySchema(
      id: 12,
      name: r'customerName',
      type: IsarType.string,
    ),
    r'customerType': PropertySchema(
      id: 13,
      name: r'customerType',
      type: IsarType.string,
    ),
    r'email': PropertySchema(
      id: 14,
      name: r'email',
      type: IsarType.string,
    ),
    r'errors': PropertySchema(
      id: 15,
      name: r'errors',
      type: IsarType.string,
    ),
    r'followUpDate': PropertySchema(
      id: 16,
      name: r'followUpDate',
      type: IsarType.dateTime,
    ),
    r'idNumber': PropertySchema(
      id: 17,
      name: r'idNumber',
      type: IsarType.string,
    ),
    r'image': PropertySchema(
      id: 18,
      name: r'image',
      type: IsarType.string,
    ),
    r'institutionName': PropertySchema(
      id: 19,
      name: r'institutionName',
      type: IsarType.string,
    ),
    r'isCold': PropertySchema(
      id: 20,
      name: r'isCold',
      type: IsarType.long,
    ),
    r'isProspect': PropertySchema(
      id: 21,
      name: r'isProspect',
      type: IsarType.long,
    ),
    r'isWillingToJoin': PropertySchema(
      id: 22,
      name: r'isWillingToJoin',
      type: IsarType.string,
    ),
    r'kraPin': PropertySchema(
      id: 23,
      name: r'kraPin',
      type: IsarType.string,
    ),
    r'latitude': PropertySchema(
      id: 24,
      name: r'latitude',
      type: IsarType.string,
    ),
    r'leadSource': PropertySchema(
      id: 25,
      name: r'leadSource',
      type: IsarType.string,
    ),
    r'leadType': PropertySchema(
      id: 26,
      name: r'leadType',
      type: IsarType.string,
    ),
    r'longitude': PropertySchema(
      id: 27,
      name: r'longitude',
      type: IsarType.string,
    ),
    r'offline': PropertySchema(
      id: 28,
      name: r'offline',
      type: IsarType.bool,
    ),
    r'phoneNumber': PropertySchema(
      id: 29,
      name: r'phoneNumber',
      type: IsarType.string,
    ),
    r'priceGroup': PropertySchema(
      id: 30,
      name: r'priceGroup',
      type: IsarType.string,
    ),
    r'productGroup': PropertySchema(
      id: 31,
      name: r'productGroup',
      type: IsarType.string,
    ),
    r'productId': PropertySchema(
      id: 32,
      name: r'productId',
      type: IsarType.long,
    ),
    r'productTypeId': PropertySchema(
      id: 33,
      name: r'productTypeId',
      type: IsarType.string,
    ),
    r'prospectStatus': PropertySchema(
      id: 34,
      name: r'prospectStatus',
      type: IsarType.string,
    ),
    r'quantityId': PropertySchema(
      id: 35,
      name: r'quantityId',
      type: IsarType.string,
    ),
    r'reasonIsCold': PropertySchema(
      id: 36,
      name: r'reasonIsCold',
      type: IsarType.string,
    ),
    r'regionId': PropertySchema(
      id: 37,
      name: r'regionId',
      type: IsarType.long,
    ),
    r'route': PropertySchema(
      id: 38,
      name: r'route',
      type: IsarType.string,
    ),
    r'routeCode': PropertySchema(
      id: 39,
      name: r'routeCode',
      type: IsarType.string,
    ),
    r'routeName': PropertySchema(
      id: 40,
      name: r'routeName',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 41,
      name: r'status',
      type: IsarType.string,
    ),
    r'subregionId': PropertySchema(
      id: 42,
      name: r'subregionId',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 43,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'updatedBy': PropertySchema(
      id: 44,
      name: r'updatedBy',
      type: IsarType.string,
    ),
    r'userCode': PropertySchema(
      id: 45,
      name: r'userCode',
      type: IsarType.string,
    )
  },
  estimateSize: _leadsModelEstimateSize,
  serialize: _leadsModelSerialize,
  deserialize: _leadsModelDeserialize,
  deserializeProp: _leadsModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _leadsModelGetId,
  getLinks: _leadsModelGetLinks,
  attach: _leadsModelAttach,
  version: '3.1.0+1',
);

int _leadsModelEstimateSize(
  LeadsModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.account;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.action;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.address;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.approval;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.approvalProspectStatus;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.businessCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.contactPerson;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.createdBy;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.customerGroup;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.customerName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.customerType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.errors;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.idNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.image;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.institutionName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.isWillingToJoin;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.kraPin;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.latitude;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.leadSource;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.leadType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.longitude;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.phoneNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.priceGroup;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.productGroup;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.productTypeId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.prospectStatus;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.quantityId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.reasonIsCold;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.route;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.routeCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.routeName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.status;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.updatedBy;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.userCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _leadsModelSerialize(
  LeadsModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.account);
  writer.writeString(offsets[1], object.action);
  writer.writeString(offsets[2], object.address);
  writer.writeString(offsets[3], object.approval);
  writer.writeString(offsets[4], object.approvalProspectStatus);
  writer.writeString(offsets[5], object.businessCode);
  writer.writeString(offsets[6], object.contactPerson);
  writer.writeDateTime(offsets[7], object.createdAt);
  writer.writeString(offsets[8], object.createdBy);
  writer.writeString(offsets[9], object.customerGroup);
  writer.writeLong(offsets[10], object.customerGroupId);
  writer.writeLong(offsets[11], object.customerId);
  writer.writeString(offsets[12], object.customerName);
  writer.writeString(offsets[13], object.customerType);
  writer.writeString(offsets[14], object.email);
  writer.writeString(offsets[15], object.errors);
  writer.writeDateTime(offsets[16], object.followUpDate);
  writer.writeString(offsets[17], object.idNumber);
  writer.writeString(offsets[18], object.image);
  writer.writeString(offsets[19], object.institutionName);
  writer.writeLong(offsets[20], object.isCold);
  writer.writeLong(offsets[21], object.isProspect);
  writer.writeString(offsets[22], object.isWillingToJoin);
  writer.writeString(offsets[23], object.kraPin);
  writer.writeString(offsets[24], object.latitude);
  writer.writeString(offsets[25], object.leadSource);
  writer.writeString(offsets[26], object.leadType);
  writer.writeString(offsets[27], object.longitude);
  writer.writeBool(offsets[28], object.offline);
  writer.writeString(offsets[29], object.phoneNumber);
  writer.writeString(offsets[30], object.priceGroup);
  writer.writeString(offsets[31], object.productGroup);
  writer.writeLong(offsets[32], object.productId);
  writer.writeString(offsets[33], object.productTypeId);
  writer.writeString(offsets[34], object.prospectStatus);
  writer.writeString(offsets[35], object.quantityId);
  writer.writeString(offsets[36], object.reasonIsCold);
  writer.writeLong(offsets[37], object.regionId);
  writer.writeString(offsets[38], object.route);
  writer.writeString(offsets[39], object.routeCode);
  writer.writeString(offsets[40], object.routeName);
  writer.writeString(offsets[41], object.status);
  writer.writeLong(offsets[42], object.subregionId);
  writer.writeDateTime(offsets[43], object.updatedAt);
  writer.writeString(offsets[44], object.updatedBy);
  writer.writeString(offsets[45], object.userCode);
}

LeadsModel _leadsModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LeadsModel(
    account: reader.readStringOrNull(offsets[0]),
    action: reader.readStringOrNull(offsets[1]),
    address: reader.readStringOrNull(offsets[2]),
    approval: reader.readStringOrNull(offsets[3]),
    approvalProspectStatus: reader.readStringOrNull(offsets[4]),
    businessCode: reader.readStringOrNull(offsets[5]),
    contactPerson: reader.readStringOrNull(offsets[6]),
    createdAt: reader.readDateTimeOrNull(offsets[7]),
    createdBy: reader.readStringOrNull(offsets[8]),
    customerGroup: reader.readStringOrNull(offsets[9]),
    customerGroupId: reader.readLongOrNull(offsets[10]),
    customerId: reader.readLongOrNull(offsets[11]),
    customerName: reader.readStringOrNull(offsets[12]),
    customerType: reader.readStringOrNull(offsets[13]),
    email: reader.readStringOrNull(offsets[14]),
    errors: reader.readStringOrNull(offsets[15]),
    followUpDate: reader.readDateTimeOrNull(offsets[16]),
    id: id,
    idNumber: reader.readStringOrNull(offsets[17]),
    image: reader.readStringOrNull(offsets[18]),
    institutionName: reader.readStringOrNull(offsets[19]),
    isCold: reader.readLongOrNull(offsets[20]),
    isProspect: reader.readLongOrNull(offsets[21]),
    isWillingToJoin: reader.readStringOrNull(offsets[22]),
    kraPin: reader.readStringOrNull(offsets[23]),
    latitude: reader.readStringOrNull(offsets[24]),
    leadSource: reader.readStringOrNull(offsets[25]),
    leadType: reader.readStringOrNull(offsets[26]),
    longitude: reader.readStringOrNull(offsets[27]),
    offline: reader.readBoolOrNull(offsets[28]) ?? false,
    phoneNumber: reader.readStringOrNull(offsets[29]),
    priceGroup: reader.readStringOrNull(offsets[30]),
    productGroup: reader.readStringOrNull(offsets[31]),
    productId: reader.readLongOrNull(offsets[32]),
    productTypeId: reader.readStringOrNull(offsets[33]),
    prospectStatus: reader.readStringOrNull(offsets[34]),
    quantityId: reader.readStringOrNull(offsets[35]),
    reasonIsCold: reader.readStringOrNull(offsets[36]),
    regionId: reader.readLongOrNull(offsets[37]),
    route: reader.readStringOrNull(offsets[38]),
    routeCode: reader.readStringOrNull(offsets[39]),
    routeName: reader.readStringOrNull(offsets[40]),
    status: reader.readStringOrNull(offsets[41]),
    subregionId: reader.readLongOrNull(offsets[42]),
    updatedAt: reader.readDateTimeOrNull(offsets[43]),
    updatedBy: reader.readStringOrNull(offsets[44]),
    userCode: reader.readStringOrNull(offsets[45]),
  );
  return object;
}

P _leadsModelDeserializeProp<P>(
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
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readLongOrNull(offset)) as P;
    case 21:
      return (reader.readLongOrNull(offset)) as P;
    case 22:
      return (reader.readStringOrNull(offset)) as P;
    case 23:
      return (reader.readStringOrNull(offset)) as P;
    case 24:
      return (reader.readStringOrNull(offset)) as P;
    case 25:
      return (reader.readStringOrNull(offset)) as P;
    case 26:
      return (reader.readStringOrNull(offset)) as P;
    case 27:
      return (reader.readStringOrNull(offset)) as P;
    case 28:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 29:
      return (reader.readStringOrNull(offset)) as P;
    case 30:
      return (reader.readStringOrNull(offset)) as P;
    case 31:
      return (reader.readStringOrNull(offset)) as P;
    case 32:
      return (reader.readLongOrNull(offset)) as P;
    case 33:
      return (reader.readStringOrNull(offset)) as P;
    case 34:
      return (reader.readStringOrNull(offset)) as P;
    case 35:
      return (reader.readStringOrNull(offset)) as P;
    case 36:
      return (reader.readStringOrNull(offset)) as P;
    case 37:
      return (reader.readLongOrNull(offset)) as P;
    case 38:
      return (reader.readStringOrNull(offset)) as P;
    case 39:
      return (reader.readStringOrNull(offset)) as P;
    case 40:
      return (reader.readStringOrNull(offset)) as P;
    case 41:
      return (reader.readStringOrNull(offset)) as P;
    case 42:
      return (reader.readLongOrNull(offset)) as P;
    case 43:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 44:
      return (reader.readStringOrNull(offset)) as P;
    case 45:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _leadsModelGetId(LeadsModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _leadsModelGetLinks(LeadsModel object) {
  return [];
}

void _leadsModelAttach(IsarCollection<dynamic> col, Id id, LeadsModel object) {
  object.id = id;
}

extension LeadsModelQueryWhereSort
    on QueryBuilder<LeadsModel, LeadsModel, QWhere> {
  QueryBuilder<LeadsModel, LeadsModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LeadsModelQueryWhere
    on QueryBuilder<LeadsModel, LeadsModel, QWhereClause> {
  QueryBuilder<LeadsModel, LeadsModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<LeadsModel, LeadsModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterWhereClause> idBetween(
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

extension LeadsModelQueryFilter
    on QueryBuilder<LeadsModel, LeadsModel, QFilterCondition> {
  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> accountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'account',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      accountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'account',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> accountEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'account',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      accountGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'account',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> accountLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'account',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> accountBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'account',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> accountStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'account',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> accountEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'account',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> accountContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'account',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> accountMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'account',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> accountIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'account',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      accountIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'account',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> actionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'action',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      actionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'action',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> actionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> actionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> actionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> actionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'action',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> actionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> actionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> actionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> actionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'action',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> actionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'action',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      actionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'action',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> addressIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'address',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      addressIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'address',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> addressEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      addressGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> addressLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> addressBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'address',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> addressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> addressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> addressContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> addressMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'address',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> addressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      addressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> approvalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'approval',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      approvalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'approval',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> approvalEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'approval',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      approvalGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'approval',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> approvalLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'approval',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> approvalBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'approval',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      approvalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'approval',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> approvalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'approval',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> approvalContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'approval',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> approvalMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'approval',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      approvalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'approval',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      approvalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'approval',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      approvalProspectStatusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'approvalProspectStatus',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      approvalProspectStatusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'approvalProspectStatus',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      approvalProspectStatusEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'approvalProspectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      approvalProspectStatusGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'approvalProspectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      approvalProspectStatusLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'approvalProspectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      approvalProspectStatusBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'approvalProspectStatus',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      approvalProspectStatusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'approvalProspectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      approvalProspectStatusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'approvalProspectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      approvalProspectStatusContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'approvalProspectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      approvalProspectStatusMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'approvalProspectStatus',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      approvalProspectStatusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'approvalProspectStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      approvalProspectStatusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'approvalProspectStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      businessCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'businessCode',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      businessCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'businessCode',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      businessCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'businessCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      businessCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'businessCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      businessCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'businessCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      businessCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'businessCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      businessCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'businessCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      businessCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'businessCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      businessCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'businessCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      businessCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'businessCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      businessCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'businessCode',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      businessCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'businessCode',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      contactPersonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'contactPerson',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      contactPersonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'contactPerson',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      contactPersonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contactPerson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      contactPersonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'contactPerson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      contactPersonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'contactPerson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      contactPersonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'contactPerson',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      contactPersonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'contactPerson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      contactPersonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'contactPerson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      contactPersonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'contactPerson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      contactPersonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'contactPerson',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      contactPersonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contactPerson',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      contactPersonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'contactPerson',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> createdAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> createdAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      createdByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdBy',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      createdByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdBy',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> createdByEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      createdByGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> createdByLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> createdByBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdBy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      createdByStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'createdBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> createdByEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'createdBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> createdByContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'createdBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> createdByMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'createdBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      createdByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdBy',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      createdByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdBy',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerGroup',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerGroupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerGroup',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerGroupEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerGroupGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerGroupLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerGroupBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerGroup',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerGroupStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerGroupEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerGroupContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerGroupMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerGroup',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerGroupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerGroupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerGroupIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerGroupId',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerGroupIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerGroupId',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerGroupIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerGroupId',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerGroupIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerGroupId',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerGroupIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerGroupId',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerGroupIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerGroupId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerId',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerId',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> customerIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerId',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerId',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerId',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> customerIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerName',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerName',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerName',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerName',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerType',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerType',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerType',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      customerTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerType',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> errorsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'errors',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      errorsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'errors',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> errorsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'errors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> errorsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'errors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> errorsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'errors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> errorsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'errors',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> errorsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'errors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> errorsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'errors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> errorsContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'errors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> errorsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'errors',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> errorsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'errors',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      errorsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'errors',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      followUpDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'followUpDate',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      followUpDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'followUpDate',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      followUpDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'followUpDate',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      followUpDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'followUpDate',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      followUpDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'followUpDate',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      followUpDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'followUpDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> idGreaterThan(
    Id? value, {
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

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> idLessThan(
    Id? value, {
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

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
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

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> idNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idNumber',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      idNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idNumber',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> idNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      idNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> idNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> idNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      idNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> idNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> idNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> idNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      idNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      idNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> imageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> imageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> imageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> imageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'image',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> imageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> imageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      institutionNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'institutionName',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      institutionNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'institutionName',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      institutionNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'institutionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      institutionNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'institutionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      institutionNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'institutionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      institutionNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'institutionName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      institutionNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'institutionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      institutionNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'institutionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      institutionNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'institutionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      institutionNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'institutionName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      institutionNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'institutionName',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      institutionNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'institutionName',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> isColdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isCold',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      isColdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isCold',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> isColdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isCold',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> isColdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isCold',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> isColdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isCold',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> isColdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isCold',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      isProspectIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isProspect',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      isProspectIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isProspect',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> isProspectEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isProspect',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      isProspectGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isProspect',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      isProspectLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isProspect',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> isProspectBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isProspect',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      isWillingToJoinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isWillingToJoin',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      isWillingToJoinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isWillingToJoin',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      isWillingToJoinEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isWillingToJoin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      isWillingToJoinGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isWillingToJoin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      isWillingToJoinLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isWillingToJoin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      isWillingToJoinBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isWillingToJoin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      isWillingToJoinStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'isWillingToJoin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      isWillingToJoinEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'isWillingToJoin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      isWillingToJoinContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'isWillingToJoin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      isWillingToJoinMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'isWillingToJoin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      isWillingToJoinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isWillingToJoin',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      isWillingToJoinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'isWillingToJoin',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> kraPinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kraPin',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      kraPinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kraPin',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> kraPinEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kraPin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> kraPinGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kraPin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> kraPinLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kraPin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> kraPinBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kraPin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> kraPinStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kraPin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> kraPinEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kraPin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> kraPinContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kraPin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> kraPinMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kraPin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> kraPinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kraPin',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      kraPinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kraPin',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> latitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'latitude',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      latitudeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'latitude',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> latitudeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      latitudeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> latitudeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> latitudeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      latitudeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'latitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> latitudeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'latitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> latitudeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'latitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> latitudeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'latitude',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      latitudeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latitude',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      latitudeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'latitude',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      leadSourceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leadSource',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      leadSourceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leadSource',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> leadSourceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leadSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      leadSourceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leadSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      leadSourceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leadSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> leadSourceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leadSource',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      leadSourceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'leadSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      leadSourceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'leadSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      leadSourceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'leadSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> leadSourceMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'leadSource',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      leadSourceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leadSource',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      leadSourceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'leadSource',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> leadTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leadType',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      leadTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leadType',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> leadTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leadType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      leadTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leadType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> leadTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leadType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> leadTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leadType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      leadTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'leadType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> leadTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'leadType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> leadTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'leadType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> leadTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'leadType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      leadTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leadType',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      leadTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'leadType',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      longitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'longitude',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      longitudeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'longitude',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> longitudeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      longitudeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> longitudeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> longitudeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'longitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      longitudeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> longitudeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> longitudeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> longitudeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'longitude',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      longitudeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longitude',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      longitudeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'longitude',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> offlineEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'offline',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      phoneNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phoneNumber',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      phoneNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phoneNumber',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      phoneNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      phoneNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      phoneNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      phoneNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phoneNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      phoneNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      phoneNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      phoneNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      phoneNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phoneNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      phoneNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      phoneNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      priceGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'priceGroup',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      priceGroupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'priceGroup',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> priceGroupEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      priceGroupGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'priceGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      priceGroupLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'priceGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> priceGroupBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'priceGroup',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      priceGroupStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'priceGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      priceGroupEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'priceGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      priceGroupContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'priceGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> priceGroupMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'priceGroup',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      priceGroupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      priceGroupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'priceGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'productGroup',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productGroupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'productGroup',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productGroupEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productGroupGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'productGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productGroupLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'productGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productGroupBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'productGroup',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productGroupStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'productGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productGroupEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'productGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productGroupContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'productGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productGroupMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'productGroup',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productGroupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productGroupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'productGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'productId',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'productId',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> productIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productId',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'productId',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> productIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'productId',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> productIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'productId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productTypeIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'productTypeId',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productTypeIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'productTypeId',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productTypeIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productTypeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productTypeIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'productTypeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productTypeIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'productTypeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productTypeIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'productTypeId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productTypeIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'productTypeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productTypeIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'productTypeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productTypeIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'productTypeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productTypeIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'productTypeId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productTypeIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productTypeId',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      productTypeIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'productTypeId',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      prospectStatusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prospectStatus',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      prospectStatusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prospectStatus',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      prospectStatusEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prospectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      prospectStatusGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prospectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      prospectStatusLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prospectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      prospectStatusBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prospectStatus',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      prospectStatusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prospectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      prospectStatusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prospectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      prospectStatusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prospectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      prospectStatusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prospectStatus',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      prospectStatusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prospectStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      prospectStatusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prospectStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      quantityIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quantityId',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      quantityIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quantityId',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> quantityIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      quantityIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      quantityIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> quantityIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantityId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      quantityIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'quantityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      quantityIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'quantityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      quantityIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'quantityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> quantityIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'quantityId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      quantityIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantityId',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      quantityIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'quantityId',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      reasonIsColdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reasonIsCold',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      reasonIsColdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reasonIsCold',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      reasonIsColdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reasonIsCold',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      reasonIsColdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reasonIsCold',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      reasonIsColdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reasonIsCold',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      reasonIsColdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reasonIsCold',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      reasonIsColdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'reasonIsCold',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      reasonIsColdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'reasonIsCold',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      reasonIsColdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reasonIsCold',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      reasonIsColdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reasonIsCold',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      reasonIsColdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reasonIsCold',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      reasonIsColdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reasonIsCold',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> regionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'regionId',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      regionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'regionId',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> regionIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'regionId',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      regionIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'regionId',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> regionIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'regionId',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> regionIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'regionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'route',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'route',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'route',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'route',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'route',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      routeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'route',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      routeCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'routeCode',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      routeCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'routeCode',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'routeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      routeCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'routeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'routeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'routeCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      routeCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'routeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'routeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'routeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'routeCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      routeCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'routeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      routeCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'routeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      routeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'routeName',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      routeNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'routeName',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'routeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      routeNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'routeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'routeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'routeName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      routeNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'routeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'routeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'routeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> routeNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'routeName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      routeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'routeName',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      routeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'routeName',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> statusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      statusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> statusEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> statusGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> statusLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> statusBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> statusContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> statusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      subregionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subregionId',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      subregionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subregionId',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      subregionIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subregionId',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      subregionIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subregionId',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      subregionIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subregionId',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      subregionIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subregionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> updatedAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> updatedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> updatedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      updatedByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedBy',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      updatedByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedBy',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> updatedByEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      updatedByGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> updatedByLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> updatedByBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedBy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      updatedByStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'updatedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> updatedByEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'updatedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> updatedByContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'updatedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> updatedByMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'updatedBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      updatedByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      updatedByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'updatedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> userCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userCode',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      userCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userCode',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> userCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      userCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> userCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> userCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      userCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> userCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> userCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition> userCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      userCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userCode',
        value: '',
      ));
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterFilterCondition>
      userCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userCode',
        value: '',
      ));
    });
  }
}

extension LeadsModelQueryObject
    on QueryBuilder<LeadsModel, LeadsModel, QFilterCondition> {}

extension LeadsModelQueryLinks
    on QueryBuilder<LeadsModel, LeadsModel, QFilterCondition> {}

extension LeadsModelQuerySortBy
    on QueryBuilder<LeadsModel, LeadsModel, QSortBy> {
  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByAccount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'account', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByAccountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'account', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByApproval() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approval', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByApprovalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approval', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy>
      sortByApprovalProspectStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approvalProspectStatus', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy>
      sortByApprovalProspectStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approvalProspectStatus', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByBusinessCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessCode', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByBusinessCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessCode', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByContactPerson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactPerson', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByContactPersonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactPerson', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByCreatedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdBy', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByCreatedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdBy', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByCustomerGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroup', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByCustomerGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroup', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByCustomerGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroupId', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy>
      sortByCustomerGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroupId', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByCustomerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByCustomerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByCustomerType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerType', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByCustomerTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerType', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByErrors() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'errors', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByErrorsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'errors', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByFollowUpDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'followUpDate', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByFollowUpDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'followUpDate', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByIdNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idNumber', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByIdNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idNumber', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByInstitutionName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'institutionName', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy>
      sortByInstitutionNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'institutionName', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByIsCold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCold', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByIsColdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCold', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByIsProspect() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isProspect', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByIsProspectDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isProspect', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByIsWillingToJoin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isWillingToJoin', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy>
      sortByIsWillingToJoinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isWillingToJoin', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByKraPin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kraPin', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByKraPinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kraPin', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByLeadSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadSource', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByLeadSourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadSource', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByLeadType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadType', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByLeadTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadType', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByOffline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'offline', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByOfflineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'offline', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByPriceGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceGroup', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByPriceGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceGroup', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByProductGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productGroup', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByProductGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productGroup', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByProductTypeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productTypeId', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByProductTypeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productTypeId', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByProspectStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectStatus', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy>
      sortByProspectStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectStatus', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByQuantityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityId', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByQuantityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityId', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByReasonIsCold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reasonIsCold', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByReasonIsColdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reasonIsCold', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByRegionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionId', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByRegionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionId', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByRoute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'route', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByRouteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'route', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByRouteCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'routeCode', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByRouteCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'routeCode', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByRouteName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'routeName', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByRouteNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'routeName', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortBySubregionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subregionId', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortBySubregionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subregionId', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByUpdatedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedBy', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByUpdatedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedBy', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByUserCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userCode', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> sortByUserCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userCode', Sort.desc);
    });
  }
}

extension LeadsModelQuerySortThenBy
    on QueryBuilder<LeadsModel, LeadsModel, QSortThenBy> {
  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByAccount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'account', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByAccountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'account', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByApproval() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approval', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByApprovalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approval', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy>
      thenByApprovalProspectStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approvalProspectStatus', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy>
      thenByApprovalProspectStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approvalProspectStatus', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByBusinessCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessCode', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByBusinessCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessCode', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByContactPerson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactPerson', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByContactPersonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactPerson', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByCreatedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdBy', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByCreatedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdBy', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByCustomerGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroup', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByCustomerGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroup', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByCustomerGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroupId', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy>
      thenByCustomerGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroupId', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByCustomerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByCustomerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByCustomerType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerType', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByCustomerTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerType', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByErrors() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'errors', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByErrorsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'errors', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByFollowUpDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'followUpDate', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByFollowUpDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'followUpDate', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByIdNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idNumber', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByIdNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idNumber', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByInstitutionName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'institutionName', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy>
      thenByInstitutionNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'institutionName', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByIsCold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCold', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByIsColdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCold', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByIsProspect() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isProspect', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByIsProspectDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isProspect', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByIsWillingToJoin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isWillingToJoin', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy>
      thenByIsWillingToJoinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isWillingToJoin', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByKraPin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kraPin', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByKraPinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kraPin', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByLeadSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadSource', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByLeadSourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadSource', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByLeadType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadType', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByLeadTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadType', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByOffline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'offline', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByOfflineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'offline', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByPriceGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceGroup', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByPriceGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceGroup', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByProductGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productGroup', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByProductGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productGroup', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByProductTypeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productTypeId', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByProductTypeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productTypeId', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByProspectStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectStatus', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy>
      thenByProspectStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectStatus', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByQuantityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityId', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByQuantityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityId', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByReasonIsCold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reasonIsCold', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByReasonIsColdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reasonIsCold', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByRegionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionId', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByRegionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionId', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByRoute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'route', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByRouteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'route', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByRouteCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'routeCode', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByRouteCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'routeCode', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByRouteName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'routeName', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByRouteNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'routeName', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenBySubregionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subregionId', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenBySubregionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subregionId', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByUpdatedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedBy', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByUpdatedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedBy', Sort.desc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByUserCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userCode', Sort.asc);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QAfterSortBy> thenByUserCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userCode', Sort.desc);
    });
  }
}

extension LeadsModelQueryWhereDistinct
    on QueryBuilder<LeadsModel, LeadsModel, QDistinct> {
  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByAccount(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'account', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByAction(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'action', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByAddress(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'address', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByApproval(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'approval', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct>
      distinctByApprovalProspectStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'approvalProspectStatus',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByBusinessCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'businessCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByContactPerson(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'contactPerson',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByCreatedBy(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByCustomerGroup(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerGroup',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByCustomerGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerGroupId');
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerId');
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByCustomerName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByCustomerType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByErrors(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'errors', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByFollowUpDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'followUpDate');
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByIdNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByImage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByInstitutionName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'institutionName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByIsCold() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isCold');
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByIsProspect() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isProspect');
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByIsWillingToJoin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isWillingToJoin',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByKraPin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kraPin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByLatitude(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'latitude', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByLeadSource(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leadSource', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByLeadType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leadType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByLongitude(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'longitude', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByOffline() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'offline');
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByPhoneNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phoneNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByPriceGroup(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'priceGroup', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByProductGroup(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productGroup', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productId');
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByProductTypeId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productTypeId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByProspectStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prospectStatus',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByQuantityId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantityId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByReasonIsCold(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reasonIsCold', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByRegionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'regionId');
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByRoute(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'route', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByRouteCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'routeCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByRouteName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'routeName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctBySubregionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subregionId');
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByUpdatedBy(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeadsModel, LeadsModel, QDistinct> distinctByUserCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userCode', caseSensitive: caseSensitive);
    });
  }
}

extension LeadsModelQueryProperty
    on QueryBuilder<LeadsModel, LeadsModel, QQueryProperty> {
  QueryBuilder<LeadsModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> accountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'account');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> actionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'action');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> addressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'address');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> approvalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'approval');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations>
      approvalProspectStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'approvalProspectStatus');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> businessCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'businessCode');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> contactPersonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'contactPerson');
    });
  }

  QueryBuilder<LeadsModel, DateTime?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> createdByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdBy');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> customerGroupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerGroup');
    });
  }

  QueryBuilder<LeadsModel, int?, QQueryOperations> customerGroupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerGroupId');
    });
  }

  QueryBuilder<LeadsModel, int?, QQueryOperations> customerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerId');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> customerNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerName');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> customerTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerType');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> errorsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'errors');
    });
  }

  QueryBuilder<LeadsModel, DateTime?, QQueryOperations> followUpDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'followUpDate');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> idNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idNumber');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations>
      institutionNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'institutionName');
    });
  }

  QueryBuilder<LeadsModel, int?, QQueryOperations> isColdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isCold');
    });
  }

  QueryBuilder<LeadsModel, int?, QQueryOperations> isProspectProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isProspect');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations>
      isWillingToJoinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isWillingToJoin');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> kraPinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kraPin');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latitude');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> leadSourceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leadSource');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> leadTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leadType');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'longitude');
    });
  }

  QueryBuilder<LeadsModel, bool, QQueryOperations> offlineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'offline');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> phoneNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phoneNumber');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> priceGroupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priceGroup');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> productGroupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productGroup');
    });
  }

  QueryBuilder<LeadsModel, int?, QQueryOperations> productIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productId');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> productTypeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productTypeId');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> prospectStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prospectStatus');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> quantityIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantityId');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> reasonIsColdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reasonIsCold');
    });
  }

  QueryBuilder<LeadsModel, int?, QQueryOperations> regionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'regionId');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> routeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'route');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> routeCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'routeCode');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> routeNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'routeName');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<LeadsModel, int?, QQueryOperations> subregionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subregionId');
    });
  }

  QueryBuilder<LeadsModel, DateTime?, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> updatedByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedBy');
    });
  }

  QueryBuilder<LeadsModel, String?, QQueryOperations> userCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userCode');
    });
  }
}
