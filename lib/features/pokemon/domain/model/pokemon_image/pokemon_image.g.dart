// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonImage _$$_PokemonImageFromJson(Map<String, dynamic> json) =>
    _$_PokemonImage(
      pokemonImageHome: json['home'] == null
          ? null
          : PokemonImageHome.fromJson(json['home'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonImageToJson(_$_PokemonImage instance) =>
    <String, dynamic>{
      'home': instance.pokemonImageHome?.toJson(),
    };
