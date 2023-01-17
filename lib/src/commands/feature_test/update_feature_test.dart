import 'package:args/args.dart';
import 'package:args/command_runner.dart';
import 'package:io/io.dart';
import 'package:mago_merlino/src/template/template.dart';
import 'package:mason/mason.dart';
import 'package:meta/meta.dart';

class UpdateFeatureTest extends Command<int> {
  UpdateFeatureTest({
    Logger? logger,
  }) : _logger = logger ?? Logger();

  final Logger _logger;

  @override
  String get description => 'Updates the template of the flutter feature test';

  @override
  String get summary => '$invocation\n$description';

  @override
  String get name => 'update-feature-test';

  @override
  String get invocation => 'mago_merlino update-feature-test';

  @visibleForTesting
  ArgResults? argResultOverrides;

  @override
  Future<int> run() async {
    _logger
      ..flush(_logger.success)
      ..alert('Hockety pockety, wockety wack\nAbra, cabra, dabra, da')
      ..info('\n');

    final void Function([String]) generateDone =
        _logger.progress('Updating feature template');
    await generateTemplate(
      'lib/src/template/files/feature_test/',
      'flutterFeatureTestBundle',
    );

    generateDone('Updating feature test template complete');

    _logger
      ..info('\n')
      ..flush(_logger.success)
      ..alert('Higitus figitus, figitus sbum\nPresti-digi-torium');

    return ExitCode.success.code;
  }
}
