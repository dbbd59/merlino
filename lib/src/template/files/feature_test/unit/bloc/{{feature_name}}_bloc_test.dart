import 'package:bloc_test/bloc_test.dart';
import 'package:{{package_name}}/feature/{{feature_name}}/bloc/{{feature_name}}_bloc.dart';
import 'package:{{package_name}}/feature/{{feature_name}}/repo/{{feature_name}}_repo.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class Mock{{feature_name_capitalize}}Repo extends Mock implements {{feature_name_capitalize}}Repo {}

void main() {
  late {{feature_name_capitalize}}Repo repo;

  group('{{feature_name_capitalize}}Bloc', () {
    setUp(() {
      repo = Mock{{feature_name_capitalize}}Repo();
    });

    blocTest<{{feature_name_capitalize}}Bloc, {{feature_name_capitalize}}State>(
      'emits [] when nothing is added',
      build: () => _getBloc(repo),
      expect: () => [],
    );

    blocTest<{{feature_name_capitalize}}Bloc, {{feature_name_capitalize}}State>(
      'emits [{{feature_name_capitalize}}State.loaded] when fetch is added',
      setUp: () {
        when(() => repo.get{{feature_name_capitalize}}()).thenAnswer(
          (_) => Future.value('{{feature_name}}'),
        );
      },
      build: () => _getBloc(repo),
      act: (bloc) => bloc.add(const {{feature_name_capitalize}}Event.fetch()),
      expect: () =>[
          const {{feature_name_capitalize}}State.loaded('{{feature_name}}'),
        ],
    );
  });
}

{{feature_name_capitalize}}Bloc _getBloc({{feature_name_capitalize}}Repo repo) => {{feature_name_capitalize}}Bloc(repo: repo);
