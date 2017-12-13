module List2Pivotal
  class Story < Struct.new(:title, :labels, :type, :estimate)
  end
end
