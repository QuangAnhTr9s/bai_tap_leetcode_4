// https://leetcode.com/problems/jewels-and-stones/


void main() {
  String jewels = "aA", stones = "aAAbbbb";
  print(numJewelsInStones(jewels, stones));
}
int numJewelsInStones(String jewels, String stones) {
  int count = 0;
  //check từng phần tử của jewels với từng phần tử stones
  //=> nếu bằng thì tăng biến đếm lên
  for (var i = 0; i < jewels.length; i++) {
    for (var j = 0; j < stones.length; j++) {
      if (jewels[i] == stones[j]) {
        count += 1;
      }
    }
  }
  return count;
}
