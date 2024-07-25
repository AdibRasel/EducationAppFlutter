void main() {
  Circle circle = Circle(10);
  print(circle.area());
  Rectangle rectangle = Rectangle(100, 2681);
  print(rectangle.area());
}
// abstract ক্লাসের বিতরে abstract ফাংশান থাকবে এবং ওই ফাংশান শুধু মাত্র ডিক্লিয়ার থাকবে আমরা ডিফিনিশান করবো না, এবং ওই ফাংশানের কোন বডি থাকবে না।
// কমপ্লেক্স এপ্লিকেশনের জন্য এবাস্ট্রাক(abstract) ব্যবহার করা হয়।
// ইউজারের যা দরকার নেই তা হাইড করা হচ্ছে এবাস্ট্রাক(abstract) এর কাজ।
abstract class Shape { // এবাস্ট্রাক(abstract) ফাংশানের ডিক্লিয়ারেশন থাকবে কিন্তু ডিফিনিশান না এবং ওই ফাংশানের কোন বডি থাকবে না।
  double area();
}
class Circle extends Shape {
  double r; //this.r এর মাধ্যমে Circle এর প্যরামিটারের মাধ্যমে মান টা r এর মধ্য এসে সেট হবে।
  // Constctor
  Circle(this.r); // class এর নামে কোন ফাংশান থাকলে তাকে এবাস্ট্রাক(abstract) বলা যায়।
  @override
  double area() {
    return 3.1416 * r * r;
  }
}
class Rectangle extends Shape {
  double height;
  double width;
  Rectangle(this.height, this.width);

  @override
  double area() {
    return height * width;
  }
}
