class Stack

  attr_accessor :ivar

  def initialize
    @ivar = []
  end

  def add(el)
    ivar << el
    show
  end

  def remove
    ivar.pop
    show
  end

  def show
    ivar
  end
end
