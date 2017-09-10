# non-recursive fibonacci
def fibs(n)
  f1 = 0
  f2 = 1

  n.times do
    f1, f2 = f2, f1 + f2
  end

  f1
end

# recursive fibonacci
def fibs_rec(n, result = 0)
  n <= 2 ? 1 : fibs_rec(n-1) + fibs_rec(n-2)
end

puts fibs 11
puts fibs_rec 11
