# this is a concrete implementation of data miner class

require_relative "./data_miner"

class PdfDataMiner < DataMiner
  def initialize(pdf_version)
    @pdf_version = pdf_version
  end

  private

  def parse_data(data)
    {
      pdf: "[pdf] #{data} [/pdf]",
      version: @pdf_version
    }
  end

  def analyze_data(data)
    "#{data[:pdf].size} letters of #{data[:version]} pdf version."
  end
end
