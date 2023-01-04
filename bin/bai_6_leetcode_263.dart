// https://leetcode.com/problems/ugly-number/description/
//số xấu là một số nguyên dương có thừa số nguyên tố được giới hạn trong 2, 3, và 5.

void main() {
  int n = 87;
  print(isUgly(n));
}

bool isUgly(int n) {
  if(n == 0) return false; //nếu là 0 thì false

  //chia lần lượt cho 2,3,5 cho đến khi ko chia hết nữa => tách thành các phần tử
  //phần tử còn lại mà khác 1 thì false
  while( n%2 == 0){
    n = n~/2;
  }
  while( n%3 == 0){
    n = n~/3;
  }
  while( n%5 == 0){
    n = n~/5;
  }
  return n == 1 ? true : false;
}
