import 'dart:convert';
import 'dart:io';

import 'package:glob/glob.dart';
import 'package:glob/list_local_fs.dart';

Future<void> generateTemplate(String root, String fileName) async {
  final list = <FileTemplate>[];

  final file =
      Glob('{**.dart,**.yaml,**.graphql,**.md,LICENSE,.gitignore,**.svg}');

  for (var entity in file.listSync(root: root)) {
    final filename = entity.path.replaceAll(root, '');
    final fileTemplate = await _fileToBase64(filename, root);
    list.add(fileTemplate);
  }

  final m = {
    'name': 'feature',
    'description': 'feature description',
    'vars': [],
    'files': [
      for (var i = 0; i < list.length; i++)
        {'path': list[i].path, 'data': list[i].data, 'type': list[i].type}
    ]
  };

  await File('lib/src/template/bundle/$fileName.dart').writeAsString(
    '''
// ignore_for_file: prefer_single_quotes
import \'package:mason/mason.dart\';

final $fileName = MasonBundle.fromJson(${getPrettyJSONString(m)});
''',
  );
}

String getPrettyJSONString(jsonObject) {
  final encoder = const JsonEncoder.withIndent('    ');
  return encoder.convert(jsonObject);
}

Future<FileTemplate> _fileToBase64(String filename, String root) async {
  final contents = await File('$root$filename').readAsString();

  final fileBase64 = base64.encode(utf8.encode(contents));

  return FileTemplate(
    data: fileBase64,
    path: filename,
    type: filename.contains('svg') ? 'binary' : 'text',
  );
}

class FileTemplate {
  final String path;
  final String data;
  final String type;

  FileTemplate({
    required this.path,
    required this.data,
    required this.type,
  });
}
