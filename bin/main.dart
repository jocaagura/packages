import 'package:packages/packages.dart' as packages;

void main(List<String> arguments) async {
  await packages.executeExercise();
  for (int index = 1; index < 10; index++) {
    print('Starting');
    await packages.executeExercise(page: index);
    print('loading');
    await Future.delayed(Duration(milliseconds: 2000), () {
      print('||||||||||||||||||||||||||');
    });
  }
}
