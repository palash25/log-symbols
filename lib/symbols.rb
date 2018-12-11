require "symbols/version"
require "colorize"

# These symbols are only available on unix
MAIN_SYMBOLS = {
    :info => 'ℹ',
    :success => '✔',
    :warning => '⚠',
    :error => '✖'
}

# These sumbols are only used in case of windows
# since windows doesn't support the MAIN_SYMBOLS
FALLBACK_SYMBOLS = {
    :info => '¡',
    :success => 'v',
    :warning => '!!',
    :error => '×'
}

def main_supported
    if (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) == nil
        return true
    else
        return false
    end
end

module SYMBOLS
  class Log
    def initialize
        @SYMBOL = if main_supported
                    MAIN_SYMBOLS
                  else
                    FALLBACK_SYMBOLS
                  end     
    end
    
    def info
        @SYMBOL[:info].colorize(:blue)
    end

    def success
        @SYMBOL[:success].colorize(:green)
    end

    def warning
        @SYMBOL[:warning].colorize(:yellow)
    end

    def error
        @SYMBOL[:error].colorize(:red)
    end
  end
end
