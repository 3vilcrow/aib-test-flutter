import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_ability.freezed.dart';
part 'get_ability.g.dart';

@freezed
class GetAbilityRequestDTO with _$GetAbilityRequestDTO {
  const factory GetAbilityRequestDTO({
    required String url,
  }) = _GetAbilityRequestDTO;

  factory GetAbilityRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$GetAbilityRequestDTOFromJson(json);
}
