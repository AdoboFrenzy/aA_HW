class Map

  attr_accessor :ivar

  def initialize
    @ivar = []
  end

  def assign(key, value)
    unless lookup(key)
      ivar << [key, value]
      show
    else
      idx = find_idx(key)
      ivar[idx][1] = value
      show
    end
  end

  def lookup(key)
    if find_idx(key)
      idx = find_idx(key)
      ivar[idx][1]
    else
      nil
    end
  end

  def find_idx(key)
    ivar.index {|kv| kv.first == key}
  end

  def remove(key)
    ivar.reject! {|array| array.first == key}
    show
  end

  def show
    ivar
  end

end
