class Database
  @mutex = Mutex.new

  def self.get_instance
    return @instance if @instance

    @mutex.synchronize do
      @instance ||= new("localhost:777")
    end
  end

  def initialize(url)
    @url = url
  end

  def execute(query)
    puts("The query '#{query}' has been executed on #{url}.")
    puts("Used database object_id: #{object_id}")
  end

  private_class_method :new

  private

  attr_reader :url
end
