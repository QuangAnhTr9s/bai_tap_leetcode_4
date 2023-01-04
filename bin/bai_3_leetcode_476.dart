// https://leetcode.com/problems/number-complement/
//int -> binary -> đảo 1 với 0 -> int
import 'dart:math';

void main() {
  int num = 5;
  print(findComplement(num));
}

int findComplement(int num) {
  List<int> listBinary = [];
  //biến đổi int -> binary
  while(num > 0){
    listBinary.add(num % 2);
      num = num ~/ 2;
  }
  //sau while ta được số binary của num nhưng đang bị đảo từ cuối lên đầu

  //đảo 0 <-> 1
  // for (var element in listBinary) {
  //   element = element == 0 ? 1 : 0;
  // }

  listBinary = listBinary.map((e) => e == 0 ? 1 : 0).toList();
  print(listBinary[0].runtimeType);

  // int -> binary
  int result = 0;
  for(int i = 0; i < listBinary.length; i ++){
      result += listBinary[i] * pow(2, i).toInt();
  }
  return result;
}
