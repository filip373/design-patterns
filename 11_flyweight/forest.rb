# this is a client class that uses flyweight

require_relative "./tree_factory"
require_relative "./tree"

class Forest
  def initialize()
    @trees = []
    @tree_factory = TreeFactory.new
  end

  def plant_tree(x, y, name, color, texture)
    tree_type = tree_factory.get_tree_type(name, color, texture)
    tree = Tree.new(x, y, tree_type)
    trees.push(tree)
  end

  def draw(canvas)
    trees.each do |tree|
      tree.draw(canvas)
    end
  end

  private

  attr_reader :trees, :tree_factory
end
