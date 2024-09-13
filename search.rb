#! /usr/bin/env ruby

# Дана строка s и словарь d, содержащий некие слова. Определите, можно ли 
# строку s представить в последовательность разделенных пробелом слов, содержащихся в словаре d.
# Пример: дано s = "двасотни", d = ['две', 'сотни', 'тысячи']. Программа должна вернуть true 
# потому, что "двесотни" могут быть представлениы как "две сотни".

# ruby search.rb

  
def search(str, dictionary)
    m = []
    copy_str = String.new(str)

    find = lambda do |str, world|
        if str.slice!(world) == nil
            # do nothing
        else
            m << world
            find.call(str,world)
        end
    end
    
    dictionary.each do |word|
        find.call(str, word)
    end
    
    puts "Строку можно представить #{m.join(' ').inspect} ?"

    m.join().length == copy_str.length
end    

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


