void main() {
  // for loop
  // এটি ০ থেকে ৪ পর্যন্ত চলবে এবং প্রতিবার একটি সংখ্যা মুদ্রণ করবে
  for (int i = 0; i < 5; i++) {
    print('for loop iteration: $i');
  }

  // for-in loop
  // একটি লিস্টের প্রতিটি উপাদান মুদ্রণ করবে
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  for (String fruit in fruits) {
    print('for-in loop fruit: $fruit');
  }

  // while loop
  // যতক্ষণ পর্যন্ত শর্ত সত্য থাকে, লুপ চলবে
  int count = 0;
  while (count < 5) {
    print('while loop count: $count');
    count++;
  }

  // do-while loop
  // এটি অন্তত একবার চলবে, তারপর শর্ত যাচাই করবে
  int num = 0;
  do {
    print('do-while loop num: $num');
    num++;
  } while (num < 5);

  // forEach loop
  // একটি লিস্টের প্রতিটি উপাদান মুদ্রণ করবে, forEach মেথড ব্যবহার করে
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.forEach((number) {
    print('forEach loop number: $number');
  });

  // Nested loop
  // বাহিরের লুপ প্রতি বার চলার জন্য ভিতরের লুপ সম্পূর্ণ চলবে
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      print('Nested loop i: $i, j: $j');
    }
  }
}
