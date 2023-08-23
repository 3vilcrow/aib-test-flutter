import 'package:aib_test/features/pokemon/domain/model/pokemon_abilities/pokemon_abilities.dart';
import 'package:aib_test/features/pokemon/domain/model/pokemon_type/pokemon_type.dart';
import 'package:aib_test/features/pokemon/domain/model/sprites/sprites.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    int? id,
    String? name,
    @JsonKey(name: 'base_experience') int? baseExperience,
    int? height,
    @JsonKey(name: 'is_default') bool? isDefault,
    int? order,
    int? weight,
    List<PokemonType?>? types,
    List<PokemonAbilities?>? abilities,
    Sprites? sprites,
    String? url,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}
