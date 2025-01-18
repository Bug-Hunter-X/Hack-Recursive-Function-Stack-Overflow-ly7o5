function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}
This code will cause a stack overflow error for large inputs because it uses recursion without a base case that always terminates.  The base case `x == 0` is only reached when `x` is initially a non-negative number. For negative numbers, the recursion will continue indefinitely, leading to a stack overflow error. 