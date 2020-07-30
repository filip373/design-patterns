# this is a flyweight factory, it controls creation and reuse of flyweights

require_relative "./tree_type"

class TreeFactory
  def initialize
    @tree_types = []
  end

  def get_tree_type(name, color, texture)
    find_tree_type(name, color, texture) ||
      create_tree_type(name, color, texture)
  end

  private

  attr_reader :tree_types

  def find_tree_type(name, color, texture)
    tree_type = tree_types.find do |tree_type|
      tree_type.name == name &&
        tree_type.color == color &&
        tree_type.texture == texture
    end
  end

  def create_tree_type(name, color, texture)
    puts("Need to create a new tree type...")
    tree_type = TreeType.new(name, color, texture)
    tree_types.push(tree_type)
    tree_type
  end
end
