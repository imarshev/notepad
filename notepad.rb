# Объект: Мемо. поля:
# @текст
# @дата создания (created_at)

# Объект: ссылка. Поля:
# URL
# description
# created_at

# Объект: задача. Поля:
# Created_at
# due_date
# текст задачи

#Общие поля родительского класса:
# created_at
# text

#Класс: Post. Поля:
# Текст
# Дата создания

require_relative 'post.rb'
require_relative 'task.rb'
require_relative 'memo.rb'
require_relative 'link.rb'

puts "Привет, я блокнот!"
puts "Что хочешь записать?"

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size
  choices.each_with_index do |type,index|
  puts "\t#{index}.#{type}"
  end
  choice = gets.chomp.to_i
end

entry = Post.create(choice)
entry.read_from_console
entry.save

puts "Ура, запись сохранена"