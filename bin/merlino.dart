import 'dart:io';

import 'package:merlino/src/core/runner.dart';

void main(List<String> args) async {
  await _init(await Runner().run(args));
}

Future _init(int status) {
  return Future.wait<void>([stdout.close(), stderr.close()])
      .then<void>((_) => exit(status));
}
