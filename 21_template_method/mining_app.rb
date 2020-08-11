require_relative "./pdf_data_miner"
require_relative "./json_data_miner"

puts("Testing PDF data miner...")
pdf_data_miner = PdfDataMiner.new("2.54")
pdf_data_miner.mine("./data/payroll.pdf")
puts

puts("Testing JSON data miner...")
json_data_miner = JsonDataMiner.new
json_data_miner.mine("./data/startups.json")
