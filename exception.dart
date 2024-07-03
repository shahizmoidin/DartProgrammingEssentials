void main() {
  try {
    print(10 ~/ 3);
    print(10 / 0);
  } catch (e) {
    print("unsuppoered operation");
  } finally {
    print("executed no matte what");
  }

  try {
    print(10 / 0);
  } on Exception catch (e) {}
}
