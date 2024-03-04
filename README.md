# Seagort
> NIMA Code: nima002

Seagort is a Dart Package for compiling JavaScript outside the web. With this package, you can write JavaScript Code and run it, producing the result as a `String`. 

```dart
import 'package:seagort/seagort.dart';

void main() {
    print(compileJS('console.log("Hello, World!");'));
}
```

For more on the engine that runs this package, check the `utils/engine` directory of this package.

## Issues
- The engine only supports ES5, and it has a [few issues of its own](https://github.com/robertkrimen/otto?tab=readme-ov-file#caveat-emptor).