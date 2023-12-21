import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'home_provider.g.dart';

@riverpod
class ExampleTwo extends _$ExampleTwo {
  @override
  String build() {
    return 'foo';
  }

  String changeString(String string) {
    return state = string;
  }

  // Add methods to mutate the state
}
