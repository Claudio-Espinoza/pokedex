// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPokemonCollection on Isar {
  IsarCollection<Pokemon> get pokemons => this.collection();
}

const PokemonSchema = CollectionSchema(
  name: r'pokemon',
  id: -5094000433964377725,
  properties: {
    r'about': PropertySchema(
      id: 0,
      name: r'about',
      type: IsarType.object,
      target: r'About',
    ),
    r'img': PropertySchema(
      id: 1,
      name: r'img',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    ),
    r'nextEvolution': PropertySchema(
      id: 3,
      name: r'nextEvolution',
      type: IsarType.objectList,
      target: r'Evolution',
    ),
    r'num': PropertySchema(
      id: 4,
      name: r'num',
      type: IsarType.string,
    ),
    r'stats': PropertySchema(
      id: 5,
      name: r'stats',
      type: IsarType.object,
      target: r'Stats',
    ),
    r'type': PropertySchema(
      id: 6,
      name: r'type',
      type: IsarType.stringList,
    )
  },
  estimateSize: _pokemonEstimateSize,
  serialize: _pokemonSerialize,
  deserialize: _pokemonDeserialize,
  deserializeProp: _pokemonDeserializeProp,
  idName: r'id',
  indexes: {
    r'num': IndexSchema(
      id: -1976589900541946553,
      name: r'num',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'num',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {
    r'About': AboutSchema,
    r'Stats': StatsSchema,
    r'Evolution': EvolutionSchema
  },
  getId: _pokemonGetId,
  getLinks: _pokemonGetLinks,
  attach: _pokemonAttach,
  version: '3.1.0+1',
);

int _pokemonEstimateSize(
  Pokemon object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.about;
    if (value != null) {
      bytesCount +=
          3 + AboutSchema.estimateSize(value, allOffsets[About]!, allOffsets);
    }
  }
  {
    final value = object.img;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.nextEvolution;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[Evolution]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              EvolutionSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.num;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.stats;
    if (value != null) {
      bytesCount +=
          3 + StatsSchema.estimateSize(value, allOffsets[Stats]!, allOffsets);
    }
  }
  {
    final list = object.type;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  return bytesCount;
}

void _pokemonSerialize(
  Pokemon object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<About>(
    offsets[0],
    allOffsets,
    AboutSchema.serialize,
    object.about,
  );
  writer.writeString(offsets[1], object.img);
  writer.writeString(offsets[2], object.name);
  writer.writeObjectList<Evolution>(
    offsets[3],
    allOffsets,
    EvolutionSchema.serialize,
    object.nextEvolution,
  );
  writer.writeString(offsets[4], object.num);
  writer.writeObject<Stats>(
    offsets[5],
    allOffsets,
    StatsSchema.serialize,
    object.stats,
  );
  writer.writeStringList(offsets[6], object.type);
}

Pokemon _pokemonDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Pokemon();
  object.about = reader.readObjectOrNull<About>(
    offsets[0],
    AboutSchema.deserialize,
    allOffsets,
  );
  object.id = id;
  object.img = reader.readStringOrNull(offsets[1]);
  object.name = reader.readStringOrNull(offsets[2]);
  object.nextEvolution = reader.readObjectList<Evolution>(
    offsets[3],
    EvolutionSchema.deserialize,
    allOffsets,
    Evolution(),
  );
  object.num = reader.readStringOrNull(offsets[4]);
  object.stats = reader.readObjectOrNull<Stats>(
    offsets[5],
    StatsSchema.deserialize,
    allOffsets,
  );
  object.type = reader.readStringList(offsets[6]);
  return object;
}

P _pokemonDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<About>(
        offset,
        AboutSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readObjectList<Evolution>(
        offset,
        EvolutionSchema.deserialize,
        allOffsets,
        Evolution(),
      )) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readObjectOrNull<Stats>(
        offset,
        StatsSchema.deserialize,
        allOffsets,
      )) as P;
    case 6:
      return (reader.readStringList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _pokemonGetId(Pokemon object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _pokemonGetLinks(Pokemon object) {
  return [];
}

void _pokemonAttach(IsarCollection<dynamic> col, Id id, Pokemon object) {
  object.id = id;
}

extension PokemonByIndex on IsarCollection<Pokemon> {
  Future<Pokemon?> getByNum(String? num) {
    return getByIndex(r'num', [num]);
  }

  Pokemon? getByNumSync(String? num) {
    return getByIndexSync(r'num', [num]);
  }

  Future<bool> deleteByNum(String? num) {
    return deleteByIndex(r'num', [num]);
  }

  bool deleteByNumSync(String? num) {
    return deleteByIndexSync(r'num', [num]);
  }

  Future<List<Pokemon?>> getAllByNum(List<String?> numValues) {
    final values = numValues.map((e) => [e]).toList();
    return getAllByIndex(r'num', values);
  }

  List<Pokemon?> getAllByNumSync(List<String?> numValues) {
    final values = numValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'num', values);
  }

  Future<int> deleteAllByNum(List<String?> numValues) {
    final values = numValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'num', values);
  }

  int deleteAllByNumSync(List<String?> numValues) {
    final values = numValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'num', values);
  }

  Future<Id> putByNum(Pokemon object) {
    return putByIndex(r'num', object);
  }

  Id putByNumSync(Pokemon object, {bool saveLinks = true}) {
    return putByIndexSync(r'num', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByNum(List<Pokemon> objects) {
    return putAllByIndex(r'num', objects);
  }

  List<Id> putAllByNumSync(List<Pokemon> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'num', objects, saveLinks: saveLinks);
  }
}

extension PokemonQueryWhereSort on QueryBuilder<Pokemon, Pokemon, QWhere> {
  QueryBuilder<Pokemon, Pokemon, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PokemonQueryWhere on QueryBuilder<Pokemon, Pokemon, QWhereClause> {
  QueryBuilder<Pokemon, Pokemon, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Pokemon, Pokemon, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterWhereClause> idBetween(
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

  QueryBuilder<Pokemon, Pokemon, QAfterWhereClause> numIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'num',
        value: [null],
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterWhereClause> numIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'num',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterWhereClause> numEqualTo(String? num) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'num',
        value: [num],
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterWhereClause> numNotEqualTo(String? num) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'num',
              lower: [],
              upper: [num],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'num',
              lower: [num],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'num',
              lower: [num],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'num',
              lower: [],
              upper: [num],
              includeUpper: false,
            ));
      }
    });
  }
}

extension PokemonQueryFilter
    on QueryBuilder<Pokemon, Pokemon, QFilterCondition> {
  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> aboutIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'about',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> aboutIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'about',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> imgIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'img',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> imgIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'img',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> imgEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'img',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> imgGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'img',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> imgLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'img',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> imgBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'img',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> imgStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'img',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> imgEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'img',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> imgContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'img',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> imgMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'img',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> imgIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'img',
        value: '',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> imgIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'img',
        value: '',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> nextEvolutionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nextEvolution',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition>
      nextEvolutionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nextEvolution',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition>
      nextEvolutionLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'nextEvolution',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> nextEvolutionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'nextEvolution',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition>
      nextEvolutionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'nextEvolution',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition>
      nextEvolutionLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'nextEvolution',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition>
      nextEvolutionLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'nextEvolution',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition>
      nextEvolutionLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'nextEvolution',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> numIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'num',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> numIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'num',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> numEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'num',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> numGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'num',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> numLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'num',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> numBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'num',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> numStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'num',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> numEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'num',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> numContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'num',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> numMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'num',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> numIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'num',
        value: '',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> numIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'num',
        value: '',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> statsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stats',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> statsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stats',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> typeElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> typeElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> typeElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> typeElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> typeElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> typeElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> typeElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> typeElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> typeElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition>
      typeElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> typeLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'type',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'type',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'type',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> typeLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'type',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> typeLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'type',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> typeLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'type',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension PokemonQueryObject
    on QueryBuilder<Pokemon, Pokemon, QFilterCondition> {
  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> about(
      FilterQuery<About> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'about');
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> nextEvolutionElement(
      FilterQuery<Evolution> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'nextEvolution');
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterFilterCondition> stats(
      FilterQuery<Stats> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'stats');
    });
  }
}

extension PokemonQueryLinks
    on QueryBuilder<Pokemon, Pokemon, QFilterCondition> {}

extension PokemonQuerySortBy on QueryBuilder<Pokemon, Pokemon, QSortBy> {
  QueryBuilder<Pokemon, Pokemon, QAfterSortBy> sortByImg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'img', Sort.asc);
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterSortBy> sortByImgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'img', Sort.desc);
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterSortBy> sortByNum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'num', Sort.asc);
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterSortBy> sortByNumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'num', Sort.desc);
    });
  }
}

extension PokemonQuerySortThenBy
    on QueryBuilder<Pokemon, Pokemon, QSortThenBy> {
  QueryBuilder<Pokemon, Pokemon, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterSortBy> thenByImg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'img', Sort.asc);
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterSortBy> thenByImgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'img', Sort.desc);
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterSortBy> thenByNum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'num', Sort.asc);
    });
  }

  QueryBuilder<Pokemon, Pokemon, QAfterSortBy> thenByNumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'num', Sort.desc);
    });
  }
}

extension PokemonQueryWhereDistinct
    on QueryBuilder<Pokemon, Pokemon, QDistinct> {
  QueryBuilder<Pokemon, Pokemon, QDistinct> distinctByImg(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'img', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Pokemon, Pokemon, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Pokemon, Pokemon, QDistinct> distinctByNum(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'num', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Pokemon, Pokemon, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }
}

extension PokemonQueryProperty
    on QueryBuilder<Pokemon, Pokemon, QQueryProperty> {
  QueryBuilder<Pokemon, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Pokemon, About?, QQueryOperations> aboutProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'about');
    });
  }

  QueryBuilder<Pokemon, String?, QQueryOperations> imgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'img');
    });
  }

  QueryBuilder<Pokemon, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Pokemon, List<Evolution>?, QQueryOperations>
      nextEvolutionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nextEvolution');
    });
  }

  QueryBuilder<Pokemon, String?, QQueryOperations> numProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'num');
    });
  }

  QueryBuilder<Pokemon, Stats?, QQueryOperations> statsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stats');
    });
  }

  QueryBuilder<Pokemon, List<String>?, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const StatsSchema = Schema(
  name: r'Stats',
  id: 6085053765032852394,
  properties: {
    r'base_attack': PropertySchema(
      id: 0,
      name: r'base_attack',
      type: IsarType.string,
    ),
    r'base_defense': PropertySchema(
      id: 1,
      name: r'base_defense',
      type: IsarType.string,
    ),
    r'especial_attack': PropertySchema(
      id: 2,
      name: r'especial_attack',
      type: IsarType.string,
    ),
    r'especial_defense': PropertySchema(
      id: 3,
      name: r'especial_defense',
      type: IsarType.string,
    ),
    r'hp': PropertySchema(
      id: 4,
      name: r'hp',
      type: IsarType.string,
    ),
    r'speed': PropertySchema(
      id: 5,
      name: r'speed',
      type: IsarType.string,
    )
  },
  estimateSize: _statsEstimateSize,
  serialize: _statsSerialize,
  deserialize: _statsDeserialize,
  deserializeProp: _statsDeserializeProp,
);

int _statsEstimateSize(
  Stats object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.baseAttack;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.baseDefense;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.especialAttack;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.especialDefense;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.hp;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.speed;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _statsSerialize(
  Stats object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.baseAttack);
  writer.writeString(offsets[1], object.baseDefense);
  writer.writeString(offsets[2], object.especialAttack);
  writer.writeString(offsets[3], object.especialDefense);
  writer.writeString(offsets[4], object.hp);
  writer.writeString(offsets[5], object.speed);
}

Stats _statsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Stats();
  object.baseAttack = reader.readStringOrNull(offsets[0]);
  object.baseDefense = reader.readStringOrNull(offsets[1]);
  object.especialAttack = reader.readStringOrNull(offsets[2]);
  object.especialDefense = reader.readStringOrNull(offsets[3]);
  object.hp = reader.readStringOrNull(offsets[4]);
  object.speed = reader.readStringOrNull(offsets[5]);
  return object;
}

P _statsDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension StatsQueryFilter on QueryBuilder<Stats, Stats, QFilterCondition> {
  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseAttackIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'base_attack',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseAttackIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'base_attack',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseAttackEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'base_attack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseAttackGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'base_attack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseAttackLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'base_attack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseAttackBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'base_attack',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseAttackStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'base_attack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseAttackEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'base_attack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseAttackContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'base_attack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseAttackMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'base_attack',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseAttackIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'base_attack',
        value: '',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseAttackIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'base_attack',
        value: '',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseDefenseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'base_defense',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseDefenseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'base_defense',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseDefenseEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'base_defense',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseDefenseGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'base_defense',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseDefenseLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'base_defense',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseDefenseBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'base_defense',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseDefenseStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'base_defense',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseDefenseEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'base_defense',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseDefenseContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'base_defense',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseDefenseMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'base_defense',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseDefenseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'base_defense',
        value: '',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> baseDefenseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'base_defense',
        value: '',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialAttackIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'especial_attack',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialAttackIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'especial_attack',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialAttackEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'especial_attack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialAttackGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'especial_attack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialAttackLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'especial_attack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialAttackBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'especial_attack',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialAttackStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'especial_attack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialAttackEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'especial_attack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialAttackContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'especial_attack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialAttackMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'especial_attack',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialAttackIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'especial_attack',
        value: '',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialAttackIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'especial_attack',
        value: '',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialDefenseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'especial_defense',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialDefenseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'especial_defense',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialDefenseEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'especial_defense',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialDefenseGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'especial_defense',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialDefenseLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'especial_defense',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialDefenseBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'especial_defense',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialDefenseStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'especial_defense',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialDefenseEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'especial_defense',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialDefenseContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'especial_defense',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialDefenseMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'especial_defense',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> especialDefenseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'especial_defense',
        value: '',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition>
      especialDefenseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'especial_defense',
        value: '',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> hpIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hp',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> hpIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hp',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> hpEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> hpGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> hpLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> hpBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> hpStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> hpEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> hpContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> hpMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hp',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> hpIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hp',
        value: '',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> hpIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hp',
        value: '',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> speedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'speed',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> speedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'speed',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> speedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'speed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> speedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'speed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> speedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'speed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> speedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'speed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> speedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'speed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> speedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'speed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> speedContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'speed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> speedMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'speed',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> speedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'speed',
        value: '',
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> speedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'speed',
        value: '',
      ));
    });
  }
}

extension StatsQueryObject on QueryBuilder<Stats, Stats, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const AboutSchema = Schema(
  name: r'About',
  id: 5950555261266124828,
  properties: {
    r'category': PropertySchema(
      id: 0,
      name: r'category',
      type: IsarType.string,
    ),
    r'height': PropertySchema(
      id: 1,
      name: r'height',
      type: IsarType.string,
    ),
    r'weaknesses': PropertySchema(
      id: 2,
      name: r'weaknesses',
      type: IsarType.stringList,
    ),
    r'weight': PropertySchema(
      id: 3,
      name: r'weight',
      type: IsarType.string,
    )
  },
  estimateSize: _aboutEstimateSize,
  serialize: _aboutSerialize,
  deserialize: _aboutDeserialize,
  deserializeProp: _aboutDeserializeProp,
);

int _aboutEstimateSize(
  About object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.category;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.height;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.weaknesses;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.weight;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _aboutSerialize(
  About object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.category);
  writer.writeString(offsets[1], object.height);
  writer.writeStringList(offsets[2], object.weaknesses);
  writer.writeString(offsets[3], object.weight);
}

About _aboutDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = About();
  object.category = reader.readStringOrNull(offsets[0]);
  object.height = reader.readStringOrNull(offsets[1]);
  object.weaknesses = reader.readStringList(offsets[2]);
  object.weight = reader.readStringOrNull(offsets[3]);
  return object;
}

P _aboutDeserializeProp<P>(
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
      return (reader.readStringList(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension AboutQueryFilter on QueryBuilder<About, About, QFilterCondition> {
  QueryBuilder<About, About, QAfterFilterCondition> categoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'category',
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> categoryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'category',
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> categoryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> categoryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> categoryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> categoryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'category',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> categoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> categoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> categoryContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> categoryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'category',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> heightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'height',
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> heightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'height',
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> heightEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'height',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> heightGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'height',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> heightLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'height',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> heightBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'height',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> heightStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'height',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> heightEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'height',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> heightContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'height',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> heightMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'height',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> heightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'height',
        value: '',
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> heightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'height',
        value: '',
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weaknessesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weaknesses',
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weaknessesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weaknesses',
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weaknessesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weaknesses',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition>
      weaknessesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weaknesses',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weaknessesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weaknesses',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weaknessesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weaknesses',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weaknessesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'weaknesses',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weaknessesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'weaknesses',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weaknessesElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'weaknesses',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weaknessesElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'weaknesses',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weaknessesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weaknesses',
        value: '',
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition>
      weaknessesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weaknesses',
        value: '',
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weaknessesLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weaknesses',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weaknessesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weaknesses',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weaknessesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weaknesses',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weaknessesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weaknesses',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weaknessesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weaknesses',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weaknessesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weaknesses',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weight',
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weight',
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weightEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weightGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weightLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weightBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weightStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'weight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weightEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'weight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weightContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'weight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weightMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'weight',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weight',
        value: '',
      ));
    });
  }

  QueryBuilder<About, About, QAfterFilterCondition> weightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weight',
        value: '',
      ));
    });
  }
}

extension AboutQueryObject on QueryBuilder<About, About, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const EvolutionSchema = Schema(
  name: r'Evolution',
  id: -3856668642502749248,
  properties: {
    r'name_evolution': PropertySchema(
      id: 0,
      name: r'name_evolution',
      type: IsarType.string,
    ),
    r'num_evolution': PropertySchema(
      id: 1,
      name: r'num_evolution',
      type: IsarType.string,
    )
  },
  estimateSize: _evolutionEstimateSize,
  serialize: _evolutionSerialize,
  deserialize: _evolutionDeserialize,
  deserializeProp: _evolutionDeserializeProp,
);

int _evolutionEstimateSize(
  Evolution object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.nameEvolution;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.numEvolution;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _evolutionSerialize(
  Evolution object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.nameEvolution);
  writer.writeString(offsets[1], object.numEvolution);
}

Evolution _evolutionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Evolution();
  object.nameEvolution = reader.readStringOrNull(offsets[0]);
  object.numEvolution = reader.readStringOrNull(offsets[1]);
  return object;
}

P _evolutionDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension EvolutionQueryFilter
    on QueryBuilder<Evolution, Evolution, QFilterCondition> {
  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      nameEvolutionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name_evolution',
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      nameEvolutionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name_evolution',
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      nameEvolutionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name_evolution',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      nameEvolutionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name_evolution',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      nameEvolutionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name_evolution',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      nameEvolutionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name_evolution',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      nameEvolutionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name_evolution',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      nameEvolutionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name_evolution',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      nameEvolutionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name_evolution',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      nameEvolutionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name_evolution',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      nameEvolutionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name_evolution',
        value: '',
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      nameEvolutionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name_evolution',
        value: '',
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      numEvolutionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'num_evolution',
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      numEvolutionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'num_evolution',
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition> numEvolutionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'num_evolution',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      numEvolutionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'num_evolution',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      numEvolutionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'num_evolution',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition> numEvolutionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'num_evolution',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      numEvolutionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'num_evolution',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      numEvolutionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'num_evolution',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      numEvolutionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'num_evolution',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition> numEvolutionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'num_evolution',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      numEvolutionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'num_evolution',
        value: '',
      ));
    });
  }

  QueryBuilder<Evolution, Evolution, QAfterFilterCondition>
      numEvolutionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'num_evolution',
        value: '',
      ));
    });
  }
}

extension EvolutionQueryObject
    on QueryBuilder<Evolution, Evolution, QFilterCondition> {}
