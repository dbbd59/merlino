import 'package:args/command_runner.dart';
import 'package:interact/interact.dart';
import 'package:io/io.dart';
import 'package:mago_merlino/src/core/runner.dart';
import 'package:mason/mason.dart';

export 'feature/create_feature.dart';
export 'feature/update_feature.dart';
export 'feature_test/create_feature_test.dart';
export 'feature_test/update_feature_test.dart';

typedef GeneratorBuilder = Future<MasonGenerator> Function(MasonBundle);

class Run extends Command<int> {
  @override
  String get description => 'Do some magic';

  @override
  String get summary => '$invocation\n$description';

  @override
  String get name => 'run';

  @override
  String get invocation => 'mago_merlino run';

  @override
  Future<int> run() async {
    final command = ['create-feature', 'create-feature-test'];

    final selection = Select(
      prompt: 'What magic should I do?',
      options: command,
    ).interact();

    final featureName = Input(
      prompt: 'Feature name',
      validator: (String x) {
        if (x.isNotEmpty) {
          return true;
        } else {
          throw ValidationError(
            'I need this information to be able to do my magic',
          );
        }
      },
    ).interact();

    final path = selection == 0
        ? Input(
            prompt: 'Path',
            defaultValue: 'lib/feature',
          ).interact()
        : '';

    final packageName = Input(
      prompt: 'Package Name',
      validator: (String x) {
        if (x.isNotEmpty) {
          return true;
        } else {
          throw ValidationError(
            'I need this information to be able to do my magic',
          );
        }
      },
    ).interact();

    final args = [
      command[selection],
      featureName,
      if (selection == 0) '--path',
      if (selection == 0) path,
      '--package-name',
      packageName,
    ];

    final yes = Confirm(
      prompt: '${args.join(' ')}',
    ).interact();

    if (yes) {
      await Runner().run(args);

      return ExitCode.success.code;
    } else {
      return ExitCode.tempFail.code;
    }
  }
}
