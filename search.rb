#! /usr/bin/env ruby

# Дана строка s и словарь d, содержащий некие слова. Определите, можно ли 
# строку s представить в последовательность разделенных пробелом слов, содержащихся в словаре d.
# Пример: дано s = "двасотни", d = ['две', 'сотни', 'тысячи']. Программа должна вернуть true 
# потому, что "двесотни" могут быть представлениы как "две сотни".

# ruby search.rb

  
def search(str, dictionary)    
    m = []

    dictionary.each do |word|
        str.scan(word).each do |substring|
            m.push(substring)
        end
    end

    puts "Строку можно представить #{m.join(' ').inspect} ?"

    m.join().length >= str.length
end 

str = 'двадесяткадв'
dictionary = ['два', 'дв', 'десятка', 'тысячи', 'a']
puts "Строка: '#{str}'"
puts "Словарь: #{dictionary}"
puts search(str, dictionary)
puts "-----------"
puts "\n"

str = 'двадесяткадва'
dictionary = ['два', 'дв', 'ва', 'десятка', 'тысячи']
puts "Строка: '#{str}'"
puts "Словарь: #{dictionary}"
puts search(str, dictionary)
puts "-----------"
puts "\n"

str = 'двадесяткадва'
dictionary = ['два', 'дв', 'ва', 'десятка', 'тысячи']
puts "Строка: '#{str}'"
puts "Словарь: #{dictionary}"
puts search(str, dictionary)
puts "-----------"
puts "\n"

str = 'двадесяткадва'
dictionary = ['два', 'десятка', 'тысячи']
puts "Строка: '#{str}'"
puts "Словарь: #{dictionary}"
puts search(str, dictionary)
puts "-----------"
puts "\n"


str = 'двесотни'
dictionary = ['две', 'сотни', 'тысячи']
puts "Строка: '#{str}'"
puts "Словарь: #{dictionary}"
puts search(str, dictionary)
puts "-----------"
puts "\n"

str = 'беспорядок'
dictionary = ['море', 'роса', 'порядок',  'дым', 'в', 'цифра', 'бес', 'друг']
puts "Строка: '#{str}'"
puts "Словарь: #{dictionary}"
puts search(str, dictionary)
puts "-----------"
puts "\n"

str = 'вдруг'
dictionary = ['деревня', 'циклон', 'остров','в' , 'молоко', 'ведро', 'планета', 'друг',  'окружность']
puts "Строка: '#{str}'"
puts "Словарь: #{dictionary}"
puts search(str, dictionary)
puts "-----------"
puts "\n"

str = 'запросто'
dictionary = ['холм', 'за', 'игра', 'звонок', 'просто', 'крышка', 'цветок', 'медведь']
puts "Строка: '#{str}'"
puts "Словарь: #{dictionary}"
puts search(str, dictionary)
puts "-----------"
puts "\n"

str = 'несколько'
dictionary = ['сколько', 'шар', 'неrrrrrr', 'поле', 'солнце', 'облако']
puts "Строка: '#{str}'"
puts "Словарь: #{dictionary}"
puts search(str, dictionary)
puts "-----------"
puts "\n"


