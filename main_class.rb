# Main class
class MyFile
  def initialize(a)
    File.open('F.txt', 'w') do |file|
      a.each { |e| file.write(e) }
    end
  end

  def add
    File.open('G.txt', 'w') do |g_file|
      File.open('F.txt', 'r') do |f_file|
        f_file.each { |line| g_file.puts(' ' + line) }
      end
    end
  end

  def for_test(a)
    File.open('F.txt', 'w') do |file|
      file.puts(a)
    end
    add
  end

  def f_show
    File.readlines('F.txt').map.to_a
  end

  def g_show
    File.readlines('G.txt').map.to_a
  end
end
