import 'package:seagort_lite/seagort.dart';

void main(List<String> args) {
  if (arguments(args).length >= 1) {
    final result = compileJSFile(args[0]);
    if (result != "undefined") {
      print(result);
    }
  }
}

Iterable<String> arguments(List<String> args) => args.where((element) => !element.contains('-'));