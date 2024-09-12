#! /usr/bin/env ruby

# Дана строка s и словарь d, содержащий некие слова. Определите, можно ли 
# строку s представить в последовательность разделенных пробелом слов, содержащихся в словаре d.
# Пример: дано s = "двасотни", d = ['две', 'сотни', 'тысячи']. Программа должна вернуть true 
# потому, что "двесотни" могут быть представлениы как "две сотни".

# ruby search.rb


str = 'беспорядок'
dictionary = ['море', 'роса', 'порядок',  'дым', 'в', 'цифра', 'бес', 'друг']

def search(str, dictionary)
    m = []
    i = 0

    while i < dictionary.length && m.join().length < str.length
        if str.include?(dictionary[i])
            m.push(dictionary[i])
        end
        i += 1    
    end
    puts "Строку можно представить #{m.join(' ').inspect} ?"
    m.join().length == str.length
end

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


