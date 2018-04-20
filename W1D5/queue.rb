class Queue

  attr_accessor :ivar

  def initialize
    @ivar = []
  end

  def enqueue(el)
    ivar.unshift(el)
    show
  end

  def dequeue
    ivar.pop
    show
  end

  def show
    ivar
  end

end
