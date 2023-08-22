import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_type_final.freezed.dart';
part 'pokemon_type_final.g.dart';

@freezed
class PokemonTypeFinal with _$PokemonTypeFinal {
  const factory PokemonTypeFinal({
    String? name,
    String? url,
  }) = _PokemonTypeFinal;

  factory PokemonTypeFinal.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFinalFromJson(json);
}
