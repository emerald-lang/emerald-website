import "package:test/test.dart";

void main() {
  test("True == !False", () {
    expect(true, equals(!false));
  });
}
