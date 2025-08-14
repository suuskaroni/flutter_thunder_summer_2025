void main() {
  Rectangle rectangle = Rectangle(5, 5);
  print(rectangle);
  print(rectangle.calculatePerimeter());
  print(rectangle.calculateArea());
}

class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  // calculate area

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return (width + height) * 2;
  }

  @override
  String toString() {
    return "Rectangle has width of ${width}, height of ${height}. The Rectangle are is ${calculateArea()} and perimeter is ${calculatePerimeter()}";
  }
}
