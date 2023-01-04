// https://leetcode.com/problems/single-number/description/
//lấy số ko bị lặp ra
void main() {
  List<int> nums = [2, 1, 2];
  print(singleNumber(nums));
}

int singleNumber(List<int> nums) {
  Set<int> set = {};
  for (var element in nums) {
    //duyệt list nums
    if (!set.add(element)) {
      set.remove(element);
    }
    //add element vào set => nếu chưa tồn tại thì được add => điều kiện if false
    // => nếu tồn tại trong set rồi thì không được add => điều kiện if true => xóa element đó đi
  }
  return set.first; //phần tử còn lại sẽ là số ko bị lặp lại trong list nums

  // List<int> list = [];
  //   for (var element in nums) {  //duyệt list nums
  //     if(!list.contains(element)){
  //       list.add(element);     //nếu list chưa có element này thì add vào
  //     } else{
  //       list.remove(element); //nếu list có element rồi thì xóa đi
  //     }
  //   });
  //   return list[0]; //phần tử còn lại sẽ là số ko bị lặp lại trong list nums
}