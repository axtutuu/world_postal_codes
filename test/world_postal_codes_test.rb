require 'test_helper'

class WorldPostalCodesTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::WorldPostalCodes::VERSION
  end

  def test_identify_zip_code
    address = WorldPostalCodes.jp("9013106")

    assert_equal address[:prefecture], "沖縄県"
    assert_equal address[:prefecture_kana], "オキナワケン"
    assert_equal address[:city], "島尻郡久米島町"
    assert_equal address[:city_kana], "シマジリグンクメジマチョウ"
  end

  def test_not_found_code
    address = WorldPostalCodes.jp("0")

    assert_equal address[:prefecture], nil
  end
end
