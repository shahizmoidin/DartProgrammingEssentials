void main() {
  //mixin

  Animal a = Animal();
  a.fn();
}

//no parentchild relation just mixing classes
mixin Jump {
  int jumping = 10;
}
mixin Run {
  int run = 20;
}

class Animal with Jump, Run {
  void fn() {
    print("$jumping $run");
  }
}
