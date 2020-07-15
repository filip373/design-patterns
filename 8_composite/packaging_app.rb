require_relative "./package_leafs/phone"
require_relative "./package_leafs/ipad"
require_relative "./composites/small_box"
require_relative "./composites/big_box"

# client code using PackagePart interface
class Unpacker
  def unpack(package)
    package.unpack
  end
end

puts("Creating a package...")
package = BigBox.new([
  Ipad.new(9),
  BigBox.new([
    Phone.new("Samsung"),
    Phone.new("iPhone"),
    SmallBox.new([
      Ipad.new(7),
      Phone.new("LG"),
    ])
  ])
])

puts("Unpacking the package...")
Unpacker.new.unpack(package)
puts

puts("Unpacking a single phone...")
Unpacker.new.unpack(Phone.new("Huawei"))
