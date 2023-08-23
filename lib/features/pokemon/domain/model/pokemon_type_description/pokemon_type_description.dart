import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_type_description.freezed.dart';
part 'pokemon_type_description.g.dart';

@freezed
class PokemonTypeDescription with _$PokemonTypeDescription {
  const factory PokemonTypeDescription({
    String? name,
    String? url,
  }) = _PokemonTypeDescription;

  factory PokemonTypeDescription.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeDescriptionFromJson(json);
}
