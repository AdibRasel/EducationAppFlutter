void main() {
  NoReturnTypeFunction();
  int RetrnTypeFunctionCall = RetrnTypeFunction();
  print(RetrnTypeFunctionCall);
  NoReturnTypeWithArgument(10, 30);
  int ReturnTypeWithArgumentCall = ReturnTypeWithArgument(50, 10);
  print(ReturnTypeWithArgumentCall);

  PotionalArgumentFunction( C:500, B:546);
  PotionalArgumentFunctionTWo( C:650, A:4550, B:9546);

}





// নো রিটার্ন টাইপ ফাংশান এখানে কোন কিছু রিটার্ন করবে না। কিন্তু ফাংশানের বিতরের সকল কাজ করবে।
void NoReturnTypeFunction() {
  print("No REturn Type Function");
}









// রিটার্ন টাইপ ফাংসান। ফাংশানের বিতরে সকল কাজ করবে এবং ফাংসান কল করার সাথে সাথে ফলাফল বা অন্য যে কোন ডাটা রিটার্ন করবে।
int RetrnTypeFunction() {
// রিটার্ন করতে গেলে void ব্যবহার করা যাবে না।
// রিটার্ন ডাটা পাওয়ার জন্য ফাংশানকে কোন ভ্যরিয়েবলে ডাটা স্টোর করে রাখার জন্য ভ্যারিয়েবল তৈরি করতে হবে।
  int a = 200;
  int b = 100;
  int Result = a - b;
  return Result;
}






// নো রিটার্ন টাইপ ইউথ আর্গোমেন্ট। কোন কিছু রিটার্ন করবে না কিন্তু আর্গোমেন্টের মাধ্যমে ডাটা নিয়ে কাজ করবে।
void NoReturnTypeWithArgument(int a, int b) { // পজিশন অনুযায়ী ডাটা রিসিভ করবে, প্রথমে a বিতরে স্টোর করবে। পরে b এর বিতরে স্টোর করবে।
  int Result = a + b;
  print("কোন কিছু রিটার্ন করবে না কিন্তু আর্গোমেন্টের মাধ্যমে ডাটা নিয়ে কাজ করবে।");
  print(Result);
}










// রিটার্ন টাইপ ইউথ আর্গোমেন্ট। কোন কিছু রিটার্ন করবে এবং আর্গোমেন্টের মাধ্যমে ডাটা নিয়ে কাজ করবেন এবং যে কোন ডাটা রিটার্ন করবে।
int ReturnTypeWithArgument(int a, int b) { // পজিশন অনুযায়ী ডাটা রিসিভ করবে, প্রথমে a বিতরে স্টোর করবে। পরে b এর বিতরে স্টোর করবে।
// রিটার্ন ডাটা পাওয়ার জন্য ফাংশানকে কোন ভ্যরিয়েবলে ডাটা স্টোর করে রাখার জন্য ভ্যারিয়েবল তৈরি করতে হবে।
// রিটার্ন করতে গেলে void ব্যবহার করা যাবে না।
  int Result = a + b;
  print("কোন কিছু রিটার্ন করবে এবং আর্গোমেন্টের মাধ্যমে ডাটা রিটার্ন।");
  print(Result);
  return Result;
}







//পশিশনাল ফাংশান কল



// পজিশনের নাম অনুযায়ি আর্গোমেন্ট ফাংশান। আর্গোমেন্টের মধ্যে নাম দিয়ে ডাটা আদান-প্রদান করা। 
int PotionalArgumentFunction( {int B = 0, int C = 0, int A = 0,}){ // ফাংশান কল করার সময় কোন ডাটা না দিলে ডিপোল্ট ভাবে ০ ধরে নিবে।
  int Result = B + C + A;
  return Result;
}
int PotionalArgumentFunctionTWo({ required int B, int C = 20, required int A,}){// ফাংশান কল করার সময় রিকোয়াড করা ভ্যারিয়েবলে মান দিতে হব।
  int Result = B + C + A;
  return Result;
}
