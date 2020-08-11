# this is another concrete implementation of data miner class

require_relative "./data_miner"

class JsonDataMiner < DataMiner
  private

  def parse_data(data)
    {
      json: "'data': #{data}"
    }
  end

  def analyze_data(data)
    "#{data[:json].size} letters of json data."
  end
end
