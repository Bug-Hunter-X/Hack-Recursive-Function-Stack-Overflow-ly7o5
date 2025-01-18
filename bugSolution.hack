function foo(x: int): int {
  if (x < 0) {
    return 0; // Handle negative inputs
  } elseif (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
  echo foo(-5); // Test with negative input
}
The solution adds a check for negative input values. If x is negative, it returns 0. This prevents the infinite recursion and avoids the stack overflow.  It also includes a test case for a negative input.