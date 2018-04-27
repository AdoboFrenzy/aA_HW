class LRUCache


  def initialize(num)
    @max = num
    @cache = []
  end

  def count
    cache.count
  end

  def add(el)
    cache.delete(el) if cache.include?(el)
    cache.shift if cache.count == max

    cache << el
  end

  def show
    p cache
    nil
  end

  private

  attr_reader :cache, :max

end
#
# As you might have guessed, this is not the typical implementation
# of an LRU Cache. Any thoughts as to why?
#
# using an array as an LRU cache won't work because the indices are unstable (LRU Cache video @ 7:50)
#
# Let's consider the time complexity of the LRUCache#add method you wrote.
# In my solution it's O(n), where n is the size of the cache. For a large
# cache, that's a very lengthy process for simply adding one element.
# How might we improve the efficiency? Brainstorm some ways we might apply
# the ADTs from tonight's readings to do this.

# additional thoughts
# apply the concept of a hash map and link list instead of storing the data above into an array "cache".
# each spot in the link list is an hash map object that can be ejected, inserted, read - all of these
# operations take O(1)
# when the size of the cache grows, implementing a hashmap/ linkset would be powerful
