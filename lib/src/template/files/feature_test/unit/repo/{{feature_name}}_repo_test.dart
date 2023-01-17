import 'package:{{package_name}}/feature/{{feature_name}}/repo/{{feature_name}}_repo.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late {{feature_name_capitalize}}Repo repo;
  group('{{feature_name_capitalize}} repo', () {
    setUpAll(() {
      repo = {{feature_name_capitalize}}Repo();
    });

    test('when get{{feature_name_capitalize}}, return {{feature_name}}', () async {
      final {{feature_name}} = await repo.get{{feature_name_capitalize}}();
      expect(
        {{feature_name}},
        '{{feature_name}}',
      );
    });
  });
}
