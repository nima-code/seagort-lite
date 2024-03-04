# Seagort Lite
> NIMA Code: nima002

Seagort is a Dart Package for compiling JavaScript outside the web. With this package, you can write JavaScript Code and run it, producing the result as a `String`. 

This is the *lite* version of the intended package, or *go-seagort* (as it is the [golang](https://go.dev/) implementation of the package library).

```dart
import 'package:seagort/seagort.dart';

void main() {
    print(compileJS('console.log("Hello, World!");'));
}
```

For more on the engine that runs this package, check the `utils/engine` directory of this package.

## Issues
- The engine only supports ES5, and it has a [few issues of its own](https://github.com/robertkrimen/otto?tab=readme-ov-file#caveat-emptor).