// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_ability_description_effect_entries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonAbilityEffectEntries _$$_PokemonAbilityEffectEntriesFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonAbilityEffectEntries(
      effect: json['effect'] as String?,
      language: json['language'] == null
          ? null
          : PokemonLanguageAbility.fromJson(
              json['language'] as Map<String, dynamic>),
      shortEffect: json['short_effect'] as String?,
    );

Map<String, dynamic> _$$_PokemonAbilityEffectEntriesToJson(
        _$_PokemonAbilityEffectEntries instance) =>
    <String, dynamic>{
      'effect': instance.effect,
      'language': instance.language?.toJson(),
      'short_effect': instance.shortEffect,
    };
