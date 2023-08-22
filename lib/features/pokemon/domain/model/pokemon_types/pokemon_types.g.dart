// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonTypes _$$_PokemonTypesFromJson(Map<String, dynamic> json) =>
    _$_PokemonTypes(
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_PokemonTypesToJson(_$_PokemonTypes instance) =>
    <String, dynamic>{
      'types': instance.types,
    };
