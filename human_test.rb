require './main_class'

puts 'Введите строки для записи в файл (0 - признак завершения):'
a = []
s = gets
while s != "0\n"
  a << s
  s = gets
end
f = MyFile.new(a)
f.add
puts 'Массив строк файла F.txt:'
p f.f_show
puts 'Массив строк файла G.txt:'
p f.g_show
