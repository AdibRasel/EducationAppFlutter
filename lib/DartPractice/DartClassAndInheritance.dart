void main() {
  // class ব্যবহার করতে হলে প্রথমে class এর ইন্সেন্ট(instant) তৈরি করে নিতে হয়।
  SchoolInfo schoolInfo = SchoolInfo(); 
  schoolInfo.ShowSchoolInfo();
  schoolInfo.TeacherInfoFunction();
}

class SchoolInfo with TeacherInfo, StudentInfo, AnotherClass {
  void ShowSchoolInfo() {
    String SchoolName = "Shahapur M.L High School";
  }
}

mixin TeacherInfo {
  void TeacherInfoFunction() {
    List<dynamic> TeacherList = ["Bidan Sir", "Faruk Sir"];
    int TotalTeacher = TeacherList.length;
  }
}

mixin StudentInfo {
  void StudentFunction() {
    List<dynamic> StudentList = ["Rasel Hossain Adib", "Tajmun Jiyad"];
    int TotalStudent = StudentList.length;
    print(TotalStudent);
    print(StudentList);
  }
}

mixin AnotherClass {
  String a = "Any Text";
}
