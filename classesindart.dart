void main() {
  // print(Cookie().shape);
  //create object
  Cookie cookie = Cookie("rectan", 30);

//final cookie2=Cookie(shape:"rectangle",size:30);
  cookie.shape = "rectangele";

  print(cookie.shape);
}

class Cookie {
  //final to not allow value change
  String shape;
  double size;

  //paramterised
  Cookie(this.shape, this.size) {
    print("constructed is called");
  }

  //named constructoes
  /* Cookie({required this.shape,required this.size})
  {
    print("constructed is called");
  }
 */

  //private vairable
  //can be accessed within file
  int _hieght = 10;
  int _width = 5;

//getters
  int get height => _hieght;

//setter
  set setheight(int h) {
    _hieght = h;
  }

  void baking() {
    print("baking has started");
  }

  bool isCooling() {
    return false;
  }
}
