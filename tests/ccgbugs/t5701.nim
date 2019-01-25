discard """
  output: '''(1, 1)
(2, 2)
(3, 3)
'''
"""

iterator zip[T1, T2](a: openarray[T1], b: openarray[T2]): iterator() {.inline.} =
  let len = min(a.len, b.len)
  for i in 0..<len:
    echo (a[i], b[i])

proc foo(args: varargs[int]) =
  for i in zip(args,args):
    discard

foo(1,2,3)
