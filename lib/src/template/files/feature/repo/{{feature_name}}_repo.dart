import 'package:injectable/injectable.dart';

@injectable
class {{feature_name_capitalize}}Repo {
  Future<String> get{{feature_name_capitalize}}() async {
    return '{{feature_name}}';
  }
}
