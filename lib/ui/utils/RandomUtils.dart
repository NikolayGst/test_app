import 'dart:math';

final _random = new Random();

///Генерирует положительное рандомное число от [min] включительно до [max] включительно
int next(int min, int max) => min + _random.nextInt(max - min);
