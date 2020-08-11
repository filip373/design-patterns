# this is a base abstract class that contains the template method

class DataMiner
  def mine(path)
    file = open_file(path)
    raw_data = extract_data(file)
    data = parse_data(raw_data)
    analysis = analyze_data(data)
    send_report(analysis)
    close_file(file)
  end

  private

  def open_file(path)
    "[FILE] File #{path}"
  end

  def extract_data(file)
    file.gsub("[FILE] ", "").concat(" contents")
  end

  def parse_data(data)
    raise NotImplementedError
  end

  def analyze_data(data)
    raise NotImplementedError
  end

  def send_report(analysis)
    puts("[REPORT SENT]: #{analysis}")
  end

  def close_file(file)
    puts("Closed file: #{file}")
  end
end
