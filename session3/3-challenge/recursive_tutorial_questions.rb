def append(ary, n)
  if n < 0
    return ary
  else
    ary << n
    append( ary, n - 1)
  end
end



def reverse_append1(ary, n)
  if n < 0
    return ary
  else
    ary.unshift(n)
    reverse_append1( ary, n - 1)
  end
end

def reverse_append2(ary, n)
  def rev(ary , i, n)
    if i > n
      return ary
    else
      ary << i
      rev(ary, i + 1, n)
    end
  end
  i = 0
  rev(ary, i, n)
end


def reverse_append3(ary, n)
  if n < 0
    return ary
  else
    reverse_append3( ary, n - 1)
    ary << n
  end
end


def fib(n)
  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    return fib(n - 1) + fib(n - 2)
  end
end




puts fib(38)
