class Memo < Post
  def read_from_console
    puts "Новая заметка (все, что напишете до строки \"end\""
    @text = []
    line = nil
    while line != "end" do
      line = gets.chomp
      @text << line
    end
    @text.pop
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r"
    return @text.unshift(time_string)
  end
end