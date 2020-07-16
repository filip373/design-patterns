# this is one of the (complex) 3rd party library classes

class VideoFile
  def read(filename)
    puts("File '#{filename}' is read.")
  end

  def write(filename)
    puts("File '#{filename}' is written.")
  end

  def create(filename)
    puts("File '#{filename}' is created.")
  end

  def delete(filename)
    puts("File '#{filename}' is deleted.")
  end
end
