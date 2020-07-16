# this is a decorator class that decorates the Document interface

class EncryptedDocument
  def initialize(document, key)
    @document = document
    @key = key
  end

  def write(content)
    encrypted_content = encrypt(content)
    document.write(encrypted_content)
  end

  private

  attr_reader :document, :key

  def encrypt(content)
    puts("Encrypting...")
    content.split("").map { |letter| (letter.ord + key).to_s }.join("")
  end
end
