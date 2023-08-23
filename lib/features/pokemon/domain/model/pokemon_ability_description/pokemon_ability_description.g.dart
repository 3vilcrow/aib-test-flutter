// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_ability_description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonAbilityDescription _$$_PokemonAbilityDescriptionFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonAbilityDescription(
      name: json['name'] as String?,
      pokemonAbilityDescriptionEffectEntries: (json['effect_entries']
              as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PokemonAbilityEffectEntries.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_PokemonAbilityDescriptionToJson(
        _$_PokemonAbilityDescription instance) =>
    <String, dynamic>{
      'name': instance.name,
      'effect_entries': instance.pokemonAbilityDescriptionEffectEntries
          ?.map((e) => e?.toJson())
          .toList(),
      'url': instance.url,
    };
