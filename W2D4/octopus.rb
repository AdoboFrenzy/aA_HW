#### OCTOPUS PROBLEMS

fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_oct(arr) #O(n^2)
  longest_fish = fishes[0]

  arr.each_with_index do |fish, idx|
    arr.each_with_index do |fish2, idx2|

      longest_fish = fish2 if fish2.length > longest_fish.length
    end
  end
end

def dominant_oct(arr) #O(n log n)
  # common classifications video @ 7m 30s
  # n log n - log linear | merge sort or quick sortWW

  arr.merge_sort{|x,y| x.length <=> y.length}.last

end

def clever_oct(arr) #O(n)
  longest_fish = arr[0]

  (1...arr.count).each do |fish|
    longest_fish = fish if fish.length > longest_fish.length
  end

  longest_fish

end

### DANCING OCTOPUS PROBLEMS
#
#   [7][0][1]
#   [6]   [2]
#   [5][4][3]
#
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]


def slow_dance(dir, tiles_arr)

  tiles_arr.each_with_index do |tile, idx|
    return idx if tile == dir
  end

end


tiles_hsh = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3,
                  "down" => 4, "left-down" => 5, "left" => 6, "left-up" => 7}


def constant_dance(dir, tiles_hsh)

  tiles_hsh[dir]

end






































class Array # from A01 practice problems
  def merge_sort(&prc)

    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1

    midpoint = count / 2
    sorted_left = self.take(midpoint).merge_sort(&prc)
    sorted_right = self.drop(midpoint).merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)

  end

  private
  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged.concat(left)
    merged.concat(right)

    merged
  end
end
