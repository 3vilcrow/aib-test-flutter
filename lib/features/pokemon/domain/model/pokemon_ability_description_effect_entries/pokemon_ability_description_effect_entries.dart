import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_ability_description_effect_entries.freezed.dart';
part 'pokemon_ability_description_effect_entries.g.dart';

@freezed
class PokemonAbilityEffectEntries with _$PokemonAbilityEffectEntries {
  const factory PokemonAbilityEffectEntries({
    String? effect,
    @JsonKey(name: 'short_effect') String? shortEffect,
  }) = _PokemonAbilityEffectEntries;

  factory PokemonAbilityEffectEntries.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityEffectEntriesFromJson(json);
}
