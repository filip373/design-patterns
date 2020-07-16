# this is another decorator class that decorates the Document interface

require "base64"

class CompressedDocument
  def initialize(document)
    @document = document
  end

  def write(content)
    compressed_content = compress(content)
    document.write(compressed_content)
  end

  private

  attr_reader :document

  def compress(content)
    puts("Compressing...")
    Base64.encode64(content)
  end
end
