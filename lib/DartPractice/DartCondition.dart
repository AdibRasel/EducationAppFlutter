void main() {
  // if statement
  // যদি সংখ্যা ০ এর থেকে বড় হয়, তাহলে নিচের বার্তাটি মুদ্রণ করবে
  int number = 10;
  if (number > 0) {
    print('Number is positive'); // সংখ্যা ধনাত্মক
  }

  // if-else statement
  // যদি সংখ্যা ০ এর থেকে ছোট হয়, তাহলে প্রথম বার্তাটি মুদ্রণ করবে অন্যথায়, দ্বিতীয় বার্তাটি মুদ্রণ করবে
  if (number < 0) {
    print('Number is negative'); // সংখ্যা ঋণাত্মক
  } else {
    print('Number is not negative'); // সংখ্যা ঋণাত্মক নয়
  }

  // if-else if-else statement
  // সংখ্যা ০ হলে, প্রথম বার্তাটি মুদ্রণ করবে
  // যদি সংখ্যা ০ এর থেকে বড় হয়, তাহলে দ্বিতীয় বার্তাটি মুদ্রণ করবে
  // অন্যথায়, তৃতীয় বার্তাটি মুদ্রণ করবে
  if (number == 0) {
    print('Number is zero'); // সংখ্যা শূন্য
  } else if (number > 0) {
    print('Number is positive'); // সংখ্যা ধনাত্মক
  } else {
    print('Number is negative'); // সংখ্যা ঋণাত্মক
  }

  // Nested if statement
  // যদি বয়স ১৮ বা তার বেশি হয়, তাহলে নিচের শর্তগুলো যাচাই করবে
  int age = 20;
  if (age >= 18) {
    // যদি বয়স ২১ বা তার বেশি হয়, তাহলে প্রথম বার্তাটি মুদ্রণ করবে
    if (age >= 21) {
      print('You are eligible for all services.'); // আপনি সকল সেবার জন্য যোগ্য
    } else {
      // অন্যথায়, দ্বিতীয় বার্তাটি মুদ্রণ করবে
      print('You are eligible for limited services.'); // আপনি সীমিত সেবার জন্য যোগ্য
    }
  } else {
    // যদি বয়স ১৮ এর কম হয়, তাহলে তৃতীয় বার্তাটি মুদ্রণ করবে
    print('You are not eligible for any services.'); // আপনি কোন সেবার জন্য যোগ্য নন
  }

  // Ternary operator
  // যদি সংখ্যা জোড় হয়, তাহলে 'Even' ফলাফল প্রদান করবে
  // অন্যথায়, 'Odd' ফলাফল প্রদান করবে
  String result = (number % 2 == 0) ? 'Even' : 'Odd';
  print('Number is $result'); // সংখ্যা $result (Even বা Odd)

  // Switch case statement
  // দিনের সংখ্যা অনুযায়ী নির্দিষ্ট বার্তাটি মুদ্রণ করবে
  int day = 3;
  switch (day) {
    case 1:
      print('Monday'); // সোমবার
      break;
    case 2:
      print('Tuesday'); // মঙ্গলবার
      break;
    case 3:
      print('Wednesday'); // বুধবার
      break;
    case 4:
      print('Thursday'); // বৃহস্পতিবার
      break;
    case 5:
      print('Friday'); // শুক্রবার
      break;
    case 6:
      print('Saturday'); // শনিবার
      break;
    case 7:
      print('Sunday'); // রবিবার
      break;
    default:
      print('Invalid day'); // অবৈধ দিন
  }

  
}
