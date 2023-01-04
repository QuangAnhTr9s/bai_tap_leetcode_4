// https://leetcode.com/problems/construct-the-rectangle/description/
//biết tích 2 số => tìm 2 số có hiệu nhỏ nhất.

import 'dart:math';

void main() {
  int area = 122122;
  print(constructRectangle(area));
}

List<int> constructRectangle(int area) {
  if(area == 1) return [1,1]; //nếu tích = 1 => dài = rộng  = 1;

  for(int i = sqrt(area).toInt(); i >= 1; i--){
    //check lùi từ căn bậc 2 của area về 1 (check chiều rộng),
    // check tiến sẽ được cặp dài - rộng cách xa nhất
    // check lùi sẽ được cặp dài - rộng gần nhau nhất
      if(area % i == 0){  //nếu chia hết thì lấy luôn 2 giá trị: dài = area/1; rộng = i;
        return [area~/i, i];
      }
  }
  return [0,0];


 /* //tim tat ca cac cap chieu dai, chieu rong sao cho dai * rong = area
  List<List<int>> list = [];
  for(int d = 1; d <= area; d++){
    if( area %d == 0 && d >= area/d){
      list.add([d, (area~/d)]);
    }
  }
  //tao list hieu dai - rong để tìm cặp có khoảng cách dài rộng nhỏ nhất
  List<int> listHieu = list.map((e) => e.first - e.last).toList();
  listHieu.sort();
  int min = listHieu.first;
  //tìm cặp dài - rộng đó
  for (int i = 0; i< list.length; i++) {
    if((list[i].first - list[i].last == min)){
      return list[i];
    }
  }
    return [];*/

}
