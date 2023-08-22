// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pokemon _$$_PokemonFromJson(Map<String, dynamic> json) => _$_Pokemon(
      id: json['id'] as int?,
      name: json['name'] as String?,
      baseExperience: json['base_experience'] as int?,
      height: json['height'] as int?,
      isDefault: json['is_default'] as bool?,
      order: json['order'] as int?,
      weight: json['weight'] as int?,
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PokemonType.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprites: json['sprites'] == null
          ? null
          : Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_PokemonToJson(_$_Pokemon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'base_experience': instance.baseExperience,
      'height': instance.height,
      'is_default': instance.isDefault,
      'order': instance.order,
      'weight': instance.weight,
      'types': instance.types?.map((e) => e?.toJson()).toList(),
      'sprites': instance.sprites?.toJson(),
      'url': instance.url,
    };
