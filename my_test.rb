require './main_class'
require 'test/unit'

class MyTest < Test::Unit::TestCase
  def setup
    @a_arr = %W(qwe\n asd\n zxc\n)
    @b_arr = []
    @f_test = MyFile.new(@a_arr)
    @f_test.add
    @a_arr.each { |x| @b_arr << (' ' + x) }
  end

  def test_1
    assert_equal(@a_arr, @f_test.f_show)
  end

  def test_2
    assert_equal(@b_arr, @f_test.g_show)
  end

  def teardown
  end
end
