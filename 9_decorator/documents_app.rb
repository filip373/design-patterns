require_relative "./plaintext_document"
require_relative "./encrypted_document"
require_relative "./compressed_document"
require_relative "./notified_document"

puts("Writing a plaintext document...")
plaintext_doc = PlaintextDocument.new("my_book.txt")
plaintext_doc.write("First chapter")

puts("Compressing the document...")
compressed_doc = CompressedDocument.new(plaintext_doc)
compressed_doc.write("Second chapter")

puts("Encrypting the document...")
encrypted_doc = EncryptedDocument.new(compressed_doc, 12)
encrypted_doc.write("Third chapter")

puts("Notificaions about the document...")
notified_doc = NotifiedDocument.new(plaintext_doc, "Twitter")
notified_doc.write("Fourth chapter")
