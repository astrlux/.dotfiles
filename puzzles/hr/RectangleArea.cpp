#include <iostream>
using namespace std;
/*
 * Create classes Rectangle and RectangleArea
 */
class Rectangle {
public:
  int width = 0;
  int height = 0;
  virtual void display() { printf("%d %d\n", width, height); }
};

class RectangleArea : public Rectangle {
public:
  void read_input() { scanf("%d %d", &width, &height); }
  void display() override { printf("%d\n", width * height); }
};

class Square {
public:
  int dimension = 5;
  virtual void display() { printf("%d\n", dimension * dimension); }
};

class SquareArea : public Square {
public:
  void display() { printf("Square Dimension: %d\n", dimension); }
  void read_input() { scanf("%d", &dimension); }
};

int main() {
  /*
   * Declare a RectangleArea object
   */
  RectangleArea r_area;
  /*
   * Read the width and height
   */
  r_area.read_input();
  /*
   * Print the width and height
   */
  r_area.Rectangle::display();
  /*
   * Print the area
   */
  r_area.display();
  // SquareArea s_area;
  // s_area.read_input();
  // s_area.Square::display();
  return 0;
}
