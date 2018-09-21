class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    a = a.map{ |str| str.to_i }
    a = a.map{ |num| num + 2 }
    a = a.select{ |num| num % 2 == 0}
    a = a.uniq
    a = a.delete_if{ |num| num >= 10}
    return a.sum
  end
end
