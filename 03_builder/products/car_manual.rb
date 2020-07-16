class CarManual
  def initialize
    @pages = []
  end

  def read
    puts("The driver reads the car manual containing: #{pages}.")
  end

  def add_page(page)
    pages.push(page)
  end

  private

  attr_reader :pages
end
