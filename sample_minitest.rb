require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    assert_equale 'RUBY', 'ruby'.upcase # <<assert_equal 期待する結果、テスト対象となる値や式>>
  end
end

#<<assert / refute a>> aが真 / 偽であればパスする