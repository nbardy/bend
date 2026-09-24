# Base's Nat operations give the same results on closed numbers, which
# the checker may compute natively, and on a symbolic argument, which
# still unfolds
import Base

law ops:
  {(Nat.add(20n, 22n), Nat.sub(9n, 4n), Nat.sub(4n, 9n), Nat.max(3n, 7n)) == (42n, 5n, 0n, 7n) : Nat & Nat & Nat & Nat}

def ops():
  {==}

law cmps:
  {(Nat.cmp(2n, 5n), Nat.cmp(5n, 5n), Nat.cmp(7n, 5n)) == (LT{}, EQ{}, GT{}) : Cmp & Cmp & Cmp}

def cmps():
  {==}

# a successor on top of a computed number
law mixed:
  {Nat.add(1n+Nat.add(1n, 2n), 3n) == 7n : Nat}

def mixed():
  {==}

law open:
  for n: Nat
  {Nat.add(2n, n) == 1n+Nat.add(1n, n) : Nat}

def open(n):
  {==}

#|All terms check.
