require 'minitest/autorun'
require 'symbols'

class SymbolsTest < Minitest::Test
  def setup
    @log_symbol = SYMBOLS::Log.new  
  end

  def test_info
    assert_equal "\e[0;34;49mℹ\e[0m",
      @log_symbol.info
  end

  def test_warning
    assert_equal "\e[0;33;49m⚠\e[0m",
    @log_symbol.warning
  end

  def test_success
    assert_equal "\e[0;32;49m✔\e[0m",
      @log_symbol.success
  end

  def test_error
    assert_equal "\e[0;31;49m✖\e[0m",
      @log_symbol.error
  end
end
