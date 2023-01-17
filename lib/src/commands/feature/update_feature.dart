import 'package:args/args.dart';
import 'package:args/command_runner.dart';
import 'package:io/io.dart';
import 'package:mago_merlino/src/template/template.dart';
import 'package:mason/mason.dart';
import 'package:meta/meta.dart';

class UpdateFeature extends Command<int> {
  UpdateFeature({
    Logger? logger,
  }) : _logger = logger ?? Logger();

  final Logger _logger;

  @override
  String get description => 'Updates the template of the flutter feature';

  @override
  String get summary => '$invocation\n$description';

  @override
  String get name => 'update-feature';

  @override
  String get invocation => 'mago_merlino update-feature';

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
      'lib/src/template/files/feature/',
      'flutterFeatureBundle',
    );

    generateDone('Updating feature template complete');

    _logger
      ..info('\n')
      ..flush(_logger.success)
      ..alert('Higitus figitus, figitus sbum\nPresti-digi-torium');

    return ExitCode.success.code;
  }
}
