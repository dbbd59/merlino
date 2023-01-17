import 'package:bloc/bloc.dart';
import 'package:{{package_name}}/feature/{{feature_name}}/repo/{{feature_name}}_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part '{{feature_name}}_bloc.freezed.dart';
part '{{feature_name}}_event.dart';
part '{{feature_name}}_state.dart';

@injectable
class {{feature_name_capitalize}}Bloc extends Bloc<{{feature_name_capitalize}}Event, {{feature_name_capitalize}}State> {
  {{feature_name_capitalize}}Bloc({
    required this.repo,
  }) : super(const {{feature_name_capitalize}}State.loading()) {
    on<{{feature_name_capitalize}}Event>((event, emit) async {
      await event.map(
        fetch: (event) => _fetch(event, emit),
      );
    });
  }

  final {{feature_name_capitalize}}Repo repo;

  Future _fetch(_Fetch event, Emitter<{{feature_name_capitalize}}State> emit) async {
    final {{feature_name}} = await repo.get{{feature_name_capitalize}}();
    emit({{feature_name_capitalize}}State.loaded({{feature_name}}));
  }
}
