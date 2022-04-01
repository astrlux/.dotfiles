#include <iostream>

using namespace std;
// Implement the class Box
// l,b,h are integers representing the dimensions of the box

// The class should have the following functions :

// Constructors:
// Box();
// Box(int,int,int);
// Box(Box);

// int getLength(); // Return box's length
// int getBreadth (); // Return box's breadth
// int getHeight ();  //Return box's height
// long long CalculateVolume(); // Return the volume of the box

// Overload operator < as specified
// bool operator<(Box& b)

// Overload operator << as specified
// ostream& operator<<(ostream& out, Box& B)
class Box {
private:
  // member vars.
  int length, breadth, height;

public:
  // constructors.
  Box() {
    length = 0;
    breadth = 0;
    height = 0;
  };
  Box(int l, int b, int h) : length(l), breadth(b), height(h){};
  Box(const Box &B) {
    length = B.length;
    breadth = B.breadth;
    height = B.height;
  };

  // getter methods.
  int getLength() { return length; }
  int getBreadth() { return breadth; }
  int getHeight() { return height; }
  int getTest() { return height * 4; }

  // volume (typecast to `long`).
  long long CalculateVolume() { return (long long)(breadth)*height * length; }

  // operator overloads.
  ostream &operator<<(ostream &out, Box &B) {
    out << B.getLength() << " " << B.getBreadth() << " " << B.getHeight();
  }
  bool operator<(Box &B) {
    if (length < B.length) {
      return true;
    } else if (length == B.length) {
      if (breadth < B.breadth) {
        return true;
      } else if (breadth == B.breadth) {
        if (height < B.height) {
          return true;
        }
      }
    }

    return false;
  }
};

void check2() {
  int n;
  cin >> n;
  Box temp;
  for (int i = 0; i < n; i++) {
    int type;
    cin >> type;
    if (type == 1) {
      cout << temp << endl;
    }
    if (type == 2) {
      int l, b, h;
      cin >> l >> b >> h;
      Box NewBox(l, b, h);
      temp = NewBox;
      cout << temp << endl;
    }
    if (type == 3) {
      int l, b, h;
      cin >> l >> b >> h;
      Box NewBox(l, b, h);
      if (NewBox < temp) {
        cout << "Lesser\n";
      } else {
        cout << "Greater\n";
      }
    }
    if (type == 4) {
      cout << temp.CalculateVolume() << endl;
    }
    if (type == 5) {
      Box NewBox(temp);
      cout << NewBox << endl;
    }
  }
}

int main() { check2(); }