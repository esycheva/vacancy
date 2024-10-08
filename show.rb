#! /usr/bin/env ruby

# ruby show.rb 3 10

# Напишите программу, которая принимает ровно два целочисленных входных значения.
# Первое из этих значений должно указывать количество случайных элементов, которые вы хотите включить в выборку.
# Второе значение является верхней границей (исключительно) диапазона целых чисел,
# из которого могут быть выбраны элементы. Нижняя граница равна нулю (включительно).
# Ваша программа должна выводить  ровно запрошенное количество элементов из определенного диапазона в стандартный вывод, по одному числу на строку. 
# Каждый элемент должен быть уникальным и они должны появляться в отсортированном порядке.


def show(count, value)
    arr = []

    adder_random = lambda do 
        rand_value = rand(value)
        if arr.include?(rand_value)
            adder_random.call
        else
            arr << rand_value    
        end
    end

   count.times do 
        adder_random.call
   end
   arr.sort.each{|e| puts e} 
end

count = ARGV[0].to_i
value = ARGV[1].to_i

show(count, value)
