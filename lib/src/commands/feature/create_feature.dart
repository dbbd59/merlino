import 'dart:io';

import 'package:args/args.dart';
import 'package:args/command_runner.dart';
import 'package:io/ansi.dart';
import 'package:io/io.dart';
import 'package:mason/mason.dart';
import 'package:merlino/src/commands/commands.dart';
import 'package:merlino/src/template/bundle/flutterFeatureBundle.dart';
import 'package:meta/meta.dart';

final RegExp _identifierRegExp = RegExp('[a-z_][a-z0-9_]*');

class CreateFeature extends Command<int> {
  CreateFeature({
    Logger? logger,
    GeneratorBuilder? generator,
  })  : _logger = logger ?? Logger(),
        _generator = generator ?? MasonGenerator.fromBundle {
    argParser.addOption(
      'package-name',
      help: 'The package name for this new Flutter feature. '
          'This must be a valid dart package name.',
    );
    argParser.addOption(
      'path',
      abbr: 'p',
      help: 'The path directory name for this new Flutter feature.',
    );
  }

  final Logger _logger;
  final Future<MasonGenerator> Function(MasonBundle) _generator;

  @override
  String get description =>
      'Creates a new flutter feature in the specified directory.';

  @override
  String get summary => '$invocation\n$description';

  @override
  String get name => 'create-feature';

  @override
  String get invocation => 'merlino create-feature <feature name>';

  @visibleForTesting
  ArgResults? argResultOverrides;

  ArgResults? get _argResults => argResultOverrides ?? argResults;

  @override
  Future<int> run() async {
    _logger
      ..flush(_logger.success)
      ..alert('✨✨✨ Hockety pockety, wockety wack\nAbra, cabra, dabra, da ✨✨✨')
      ..info('\n')
      ..alert('🎶 https://www.youtube.com/watch?v=Tb75RjpvBIk 🎶')
      ..info('\n');

    final outputDirectory = _outputDirectory;
    final featureName = _featureName;
    final packageName = _packageName;
    final void Function([String]) generateDone =
        _logger.progress('Bootstrapping');
    final generator = await _generator(flutterFeatureBundle);
    final fileCount = await generator.generate(
      DirectoryGeneratorTarget(outputDirectory, _logger),
      vars: {
        'feature_name': featureName,
        'feature_name_capitalize':
            '${featureName[0].toUpperCase()}${featureName.substring(1)}',
        'package_name': packageName,
      },
    );

    generateDone('Bootstrapping complete');
    _logSummary(fileCount);

    _logger
      ..info('\n')
      ..flush(_logger.success)
      ..alert('✨✨✨ Higitus figitus, figitus sbum\nPresti-digi-torium ✨✨✨');

    return ExitCode.success.code;
  }

  void _logSummary(int fileCount) {
    _logger
      ..info(
        '${lightGreen.wrap('✓')} '
        'Generated $fileCount file(s):',
      )
      ..flush(_logger.success)
      ..info('\n');
  }

  String get _packageName {
    final packageName = _argResults!['package-name'] ?? 'your_flutter_package';
    _validatePackageName(packageName);
    return packageName;
  }

  String get _featureName {
    final rest = _argResults!.rest;
    _validateArg(rest);
    final featureName = rest.first;
    _validatePackageName(featureName);
    return featureName;
  }

  Directory get _outputDirectory {
    final path = _argResults!['path'] != null ? _argResults!['path'] + '/' : '';
    return Directory(path + _featureName);
  }

  void _validatePackageName(String name) {
    final isValidPackageName = _isValidPackageName(name);
    if (!isValidPackageName) {
      throw UsageException(
        '"$name" is not a valid package name.\n\n'
        'See https://dart.dev/tools/pub/pubspec#name for more information.',
        usage,
      );
    }
  }

  bool _isValidPackageName(String name) {
    final match = _identifierRegExp.matchAsPrefix(name);
    return match != null && match.end == name.length;
  }

  void _validateArg(List<String> args) {
    if (args.isEmpty) {
      throw UsageException(
        'No feature name specified.',
        usage,
      );
    }

    if (args.length > 1) {
      throw UsageException('Multiple feature names specified.', usage);
    }
  }
}
