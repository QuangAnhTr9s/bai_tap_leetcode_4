// https://leetcode.com/problems/add-digits/description/
//Đầu vào: num = 38
//  Đầu ra: 2
//  Giải thích: Quá trình này là
// 38 -> 3 + 8 -> 11
// 11 -> 1 + 1 -> 2

void main() {
  int num = 38;
  print(addDigits(num));
}
int addDigits(int num) {
  //cộng các chữ số cho đến khi <10
  //=> dùng đệ quy
  if(num < 10) return num; //num < 10 thì return ra luôn, >= 10 thì phải cộng
  String string = num.toString(); //cho về String để lấy từng phần tử
  int result = 0;
  for(int i = 0; i< string.length; i++){
    result += int.parse(string[i]); //cộng các phần tử lại
  }
  return addDigits(result); //trả về chính hàm này => như dòng 15, nếu <10 thì return ra luôn, >= 10 thì phải cộng tiếp

 /*
 //dùng while
 int result = num;
  while(result >= 10){
    String string = result.toString();
    result = 0;
    for(int i = 0; i< string.length; i++){
      result += int.parse(string[i]);
    }
  }*/
  return result;
}
