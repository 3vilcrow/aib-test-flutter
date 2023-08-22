// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonTypes _$$_PokemonTypesFromJson(List<dynamic> list) => _$_PokemonTypes(
      types: (list as List<dynamic>?)
          ?.map((e) => PokemonType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonTypesToJson(_$_PokemonTypes instance) =>
    <String, dynamic>{
      'types': instance.types,
    };
