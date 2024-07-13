void MapAndList(List<String> arguments) {
  // Map জাভাসচ্রিপ্টের Object এর মতো কাজ করে। Map এর বিতরে key value কি এবং ভ্যালু আকারে ডাটা থাকে।
  Map data = {
    "Name": "Rasel Hossain Adib",
    "Rool": 123,
    "Marraid": true,
  };

  data["PhonNumber"] = 01934544352; // Map এ key value যোগ করা।
  data["Name"] = "New Name"; // Map এর মধ্যে Name এর বিতরে নতুন নাম যোগ হবে।
  data["Student"] = true;
  data["Address"] = "Shahapur, Chatkhil, Noakhali";
  // Map এ key value যোগ করা। key এবং value তে যে কোন ধরনের ডাটা(string, number, bool) যোগ করা যাবে।

  data.remove("Name"); // Map এর Name নামের key এবং value ডিলেট হয়ে যাবে।
  data.removeWhere((key, value) => value == "Rasel Hossain Adib");
  data.removeWhere((key, value) => key == "Student");
  // data.removeWhere এ যেখানে যেখানে value তে "Rasel Hossain Adib" আছে সব গুলো ডিলেট হয়ে যাবে

  var result = data.containsValue(
      "Rasel Hossain Adib"); // চ্যাক করবে এই নামের কিছু আছে কি না, থাকলে true না থাকলে false আসবে।
  print(data.keys); // Map এর কি গুলো দেখা যাবে, যেমন- Name, Rool, Marraid
  print(data
      .values); // Map এর ভ্যালু গুলো দেখা যাবে, যেমন- Rasel Hossain Adib, 123, true

  Map<String, int> dataTwo = {
    // Map এর বিতরের ডাটা কোন টাইপের হবে-বলে দেওয়া।
    "Name": 123,
    "Rool": 123,
    "Marraid": 123,
  };

  // ====================================================================================

  List Data = [
    "dhaka",
    "Noakhali",
    "Rasel",
    456,
    84.45,
    true
  ]; // List কাজ করে javascript এর এরে(Array) এর মতো

  print(Data[1]); // এখানে ডাটা এর ১ তম ইনডেক্স প্রিন্ট হবে।
  Data.add("New Item"); // List এর মধ্যে ডাটা এড করা
  Data.insert(1, "Item"); // List এর মধ্যে ইনডেক্স অনুযায়ি ডাটা এড করা।
  Data.remove("dhaka"); // List এর মধ্যে "dhaka" খুজে বের করে ডিলেট করে দিবে।
  Data.removeAt(2); // List এর মধ্যে ইনডেক্স অনুযায়ি ডিলেট করবে।
  Data.removeWhere((element) =>
      element ==
      "Dhaka"); // List এর মধ্যে লুপ গুরে যত যায়গায় "Dhaka" আছে, সব ডিলেট করবে।
  Data[2] = "New Item"; // আপডেট List এর মধ্যে ইনডেক্স অনুযায়ি ডাটা আপডেট করানো

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
  ]; // এখন List এর বিতরে যে কোন টাইপের ডাটা থাকবে।
  Data.addAll(DataTwo); // একটা লিস্টের মধ্যে আরেকটার সকল ডাটা এড করানো হয়েছে।

  List<dynamic> one = [2, "String", true];
  List<dynamic> two = ["Any Name", 1234, false];
  List<dynamic> three = ["ok", true, "no", false];
  List<List> Lisstname = [one, two, three]; // List এর বিতরে List
  print(Lisstname[1][0]); // "Any Name" প্রিন্ট হবে
  List<List<String>> ListTwo = [
    ["one", "two", "three"],
    ["four", "five", "six"]
  ]; // List এর বিতরে List
  print(ListTwo[1][1]); // five প্রিন্ট হবে।
  Map StudentInfo = {
    "Name": "Rasel Hossain Adib",
    "Rool": 123,
    "Marraid": true,
  };
  Map StudentInfoOne = {
    "Name": "Jannatul Maria",
    "Rool": 123,
    "Marraid": true,
  };
  List<List<Map>> ClassInfo = [
    // List এর বিতরে Map
    [StudentInfo, StudentInfoOne],
    [StudentInfo, StudentInfoOne]
  ];
  print(ClassInfo[1][1][
      "Name"]); // Jannatul Maria প্রিন্ট করবে, প্রথমে লিস্ট ২ টা, ২টা লিস্টের বিতরে আরো দুইটা
  List<String> TeacherName = [
    "Abdul Rohim Sir",
    "Delowar Maulana",
    "Saifullah Hujur Sir"
  ];
  List<String> TeacherNumber = ["01800000000", "01800000000", "01800000000"];
  Map<String, List> SchoolInfo = {
    // Map এর বিতরে List
    "TeacherNameList": TeacherName,
    "TeacherNumberList": TeacherNumber
  };
  print(SchoolInfo["TeacherNameList"]?[1]); // Delowar Maulana প্রিন্ট করবে
  // ? চিহ্ন (Null-aware access)
  // ? চিহ্নটি ব্যবহার করা হয় কোনো ভ্যারিয়েবল বা অবজেক্ট null হতে পারে এমন পরিস্থিতিতে।
  //এটি null চেক করার জন্য ব্যবহৃত হয় এবং যদি ভ্যারিয়েবলটি null হয় তাহলে null রিটার্ন করে।
  //এটি প্রোগ্রামকে null pointer exception থেকে রক্ষা করে।
  print(SchoolInfo["TeacherNameList"]![3]); // Saifullah Hujur Sir প্রিন্ট করবে
  // ! চিহ্ন (Null assertion)
  // ! চিহ্নটি ব্যবহার করা হয় যখন তুমি নিশ্চিত যে কোনো ভ্যারিয়েবল null নয়
  //এবং তুমি সেটি null না হয়েই ব্যবহার করতে চাও।
  //এটি বলে যে "আমি নিশ্চিত যে এই ভ্যারিয়েবল null নয়।"
}

// Lesson 3: Complate 