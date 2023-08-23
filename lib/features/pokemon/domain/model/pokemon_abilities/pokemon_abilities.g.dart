// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_abilities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonAbilities _$$_PokemonAbilitiesFromJson(Map<String, dynamic> json) =>
    _$_PokemonAbilities(
      ability: json['ability'] == null
          ? null
          : PokemonAbilityDescription.fromJson(
              json['ability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonAbilitiesToJson(_$_PokemonAbilities instance) =>
    <String, dynamic>{
      'ability': instance.ability?.toJson(),
    };
