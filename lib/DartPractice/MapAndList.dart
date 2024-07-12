import 'dart:ffi';

void MapAndList(List<String> arguments) {
  List Data = [
    "dhaka",
    "Noakhali",
    "Rasel",
    456,
    84.45,
    true
  ]; // List কাজ করে javascript এর এরে এর মতো
  List<String> DataOne = [
    "Dhaka",
    "Noakhali"
  ]; // এখন List এর বিতরে শুধু মাত্র String টাইপের ডাটা থাকবে।
  List<int> DataTwo = [
    4568,
    456
  ]; // এখন List এর বিতরে শুধু মাত্র Number টাইপের ডাটা থাকবে।
  List<dynamic> DataThree = [
    "Text",
    456,
    true,
    false
  ]; // এখন List এর বিতরে শুধু যে কোন টাইপের ডাটা থাকবে।
  print(Data[1]); // এখানে ডাটা এর ১ তম ইনডেক্স প্রিন্ট হবে।
  Data.add("New Item"); // List এর মধ্যে ডাটা এড করা
  Data.insert(1, "Item"); // List এর মধ্যে ইনডেক্স অনুযায়ি ডাটা এড করা।
  Data.remove("dhaka"); // List এর মধ্যে "dhaka" খুজে বের করে ডিলেট করে দিবে।
  Data.removeAt(2); // List এর মধ্যে ইনডেক্স অনুযায়ি ডিলেট করবে।
  Data.removeWhere((element) =>
      element ==
      "Dhaka"); // List এর মধ্যে লুপ গুরে যত যায়গায় "Dhaka" আছে, সব ডিলেট করবে।
  Data[2] = "New Item"; // আপডেট List এর মধ্যে ইনডেক্স অনুযায়ি ডাটা আপডেট করানো
  Data.addAll(DataTwo); // একটা লিস্টের মধ্যে আরেকটার সকল ডাটা এড করানো হয়েছে। 
}


// video https://www.youtube.com/watch?v=hv1gLU2Coso&list=PLCOn3Sp262YPqqMoB97CQtzbc8jOIMSW0&index=4
// 23:43