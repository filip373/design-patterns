# this is a caretaker object

require_relative "./editor"

class Writer
  def initialize(name)
    @name = name
    @editor = Editor.new
    @snapshots = []
  end

  def minimize
    @editor.resize_window(0, 0)
  end

  def maximize
    @editor.resize_window(1200, 900)
  end

  def write(text)
    @editor.add_text("[#{@name}]: #{text}")
  end

  def save
    @snapshots.push(@editor.create_snapshot)
  end

  def undo
    return if @snapshots.empty?

    @snapshots.pop
    snapshot = @snapshots.last
    puts("Restoring: [#{snapshot.date}] #{snapshot.name}...")
    @editor.restore(snapshot)
  end

  def history
    @snapshots.map { |snapshot| "[#{snapshot.date}] #{snapshot.name}" }
  end

  def present
    @editor.tell_state
  end

  private

  # changing object's internal state - code smell in this pattern
  def make_backup
    @backup = editor.create_snapshot
  end
end
