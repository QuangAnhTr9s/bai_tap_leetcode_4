// https://leetcode.com/problems/single-number/description/
//đẩy hết số 0 về cuối mà không thay đổi thứ tự số khác
void main() {
  List<int> nums = [1, 0, 0, 12, 3, 12, -4, 0];
  moveZeroes(nums);
}

void moveZeroes(List<int> nums) {
  int count = 0; // tạo biến đếm số phần tử = 0
  for (int i = 0; i < nums.length; i++) //duyệt list nums
  {
    if (nums[i] == 0) {
      count++; //đếm số phần tử = 0
    } else {
      //nếu số thứ i khác 0 => cho nó = 0 và gán vị trí (i - số phần tử 0) bằng giá trị đó
      // => mục đích để đẩy số khác 0 về trước và tất cả số 0 về sau số đó
      int a = nums[i];
      nums[i] = 0;
      nums[i-count] = a;
    }
  }
  /*for (int i = 0; i < (nums.length - 1); i++) { //duyệt list nums từ đầu đến kế cuối
    for (int j = i + 1; j < nums.length; j++) { //check phần tử i với các phần tử từ i+1 đến hết
      if (nums[i] == 0 && nums[i] != nums[j]) {
      //nếu phần tử i = 0 mà phần tử i khác phần tử i+1 thì đổi chỗ
        int a = nums[i];
        nums[i] = nums[j];
        nums[j] = a;
      }
    }
  }*/
  print(nums);
}
