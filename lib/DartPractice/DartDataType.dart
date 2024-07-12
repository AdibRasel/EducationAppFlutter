void DartDataType() {
  // যে কোন স্ট্রিং নাম্বার দিয়ে শুরু হতে পারে না।
  String StringDataType = "Amader desher nam bangla desh. any text.";
  String AnyText = "Any Text thakte pare";

  // যে কোন int নাম্বার টাইপের হবে, কিন্তু কোন দশমিক থাকতে পারে না।
  int NumberOne = 4550;
  int NumberTwo = 6980;

  // double এর নাম্বারের সাথে দশমিক যুক্ত থাকতে পারে। যেমন।
  double NumberThree = 4550.658;
  double NumberFour = 6980.4580;

  // bool এর বিতরে true এবং false থাকবে।
  bool isTrue = true;
  bool isFalse = false;

  // var এর বিতরে যে কোন টাইপের ডাটা স্টোর করা যাবে
  //var এর প্রথমে যে টাইপের ডাটা থাকবে পরে ও সেই টাইপের ডাটা থাকতে হবে।
  // a টাইপের ডাটা এখন টেক্স পরে আবার a এর বিতরে নাম্বার রাখা যাবে না।
  var a = "text"; // string
  var b = 456; // number
  var c = 456.54; // double
  var d = false; // bool
  // a = 564; // এখানে string টাইপের ডাটা দিতে হবে,

  // dynamic এর বিতরে যে কোন টাইপের ডাটা স্টোর করা যাবে
  // dynamic এর প্রথমে যে টাইপের ডাটা থাকবে পরে অন্য টাইপের ডাটা থাকতে পারবে।
  // aa টাইপের ডাটা এখন টেক্স আছে পরে আবার a এর বিতরে অন্য যে কোন টাইপের ডাটা থাকতে পারবে।
  dynamic aa = "text"; // string
  dynamic bb = 456; // number
  dynamic cc = 456.54; // double
  dynamic dd = false; // bool
  aa = 456;

// Map এর বিতরে key value কি এবং ভ্যালু আকারে ডাটা থাকে।
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
  // data.removeWhere এ যেখানে যেখানে value তে "Rasel Hossain Adib" আছে সব গুলো ডিলেট হয়ে যাবে
  var result = data.containsValue("Rasel Hossain Adib"); // চ্যাক করবে এই নামের কিছু আছে কি না, থাকলে true না থাকলে false আসবে।
  print(data.keys); // Map এর কি গুলো দেখা যাবে, যেমন- Name, Rool, Marraid
  print(data.values); // Map এর ভ্যালু গুলো দেখা যাবে, যেমন- Rasel Hossain Adib, 123, true

  Map<String, int> dataTwo = {
    // Map এর বিতরের ডাটা কোন টাইপের হবে-বলে দেওয়া।
    "Name": 123,
    "Rool": 123,
    "Marraid": 123,
  };
}
