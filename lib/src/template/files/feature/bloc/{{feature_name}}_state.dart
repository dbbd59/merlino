part of '{{feature_name}}_bloc.dart';

@freezed
class {{feature_name_capitalize}}State with _${{feature_name_capitalize}}State {
  const factory {{feature_name_capitalize}}State.loaded(String {{feature_name}}) = _Loaded;
  const factory {{feature_name_capitalize}}State.loading() = _Loading;
}
